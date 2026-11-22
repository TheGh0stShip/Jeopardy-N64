#!/usr/bin/env python3
"""Extract local inputs, pinned-link Jeopardy!, and report three SHA-1 gates."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
ROM_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"
ROM_SIZE = 0x400000
MAIN = (0x1000, 0x93608)
CODE = (0x1000, 0x4E9F8)
EXPECTED_LINKED_UNITS = 805


def elf_sections(path: Path) -> list[tuple[str, bytes]]:
    """Read named PROGBITS sections from the generated big-endian ELF32 raw object."""
    data = path.read_bytes()
    if data[:6] != b"\x7fELF\x01\x02":
        raise SystemExit(f"not a big-endian ELF32 object: {path}")
    shoff = struct.unpack_from(">I", data, 0x20)[0]
    shentsize, shnum, shstrndx = struct.unpack_from(">HHH", data, 0x2E)
    headers = [struct.unpack_from(">IIIIIIIIII", data, shoff + i * shentsize) for i in range(shnum)]
    strings_header = headers[shstrndx]
    strings = data[strings_header[4]:strings_header[4] + strings_header[5]]

    def name(at: int) -> str:
        end = strings.find(b"\0", at)
        return strings[at:end].decode("ascii")

    return [(name(row[0]), data[row[4]:row[4] + row[5]]) for row in headers if row[1] == 1]


def declared_addresses() -> dict[int, str]:
    """Prefer stable declared names, then function names, for data pointer relocations."""
    found: dict[int, str] = {}
    assignment = __import__("re").compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(0x[0-9A-Fa-f]+)")
    for path in (ROOT / "symbols").glob("*.txt"):
        for line in path.read_text(errors="replace").splitlines():
            match = assignment.match(line)
            if match:
                found.setdefault(int(match.group(2), 16), match.group(1))
    for path in (ROOT / "provenance" / "main").glob("*.json"):
        row = json.loads(path.read_text())
        found.setdefault(int(row["vram"], 0), row["function"])
    return found


def raw_function_ranges() -> list[tuple[int, int]]:
    """Ranges deliberately left as raw functions, never to be disguised as generated data."""
    ranges = []
    for path in (ROOT / "provenance" / "main").glob("*.json"):
        row = json.loads(path.read_text())
        if row.get("status") not in ("assumed", "raw"):
            continue
        start = int(row["vram"], 0)
        ranges.append((start, start + int(row["size"], 0)))
    return ranges


def generate_data_sources(raw_object: Path, config_project: Path) -> dict:
    """Turn only non-function gaps into relocatable generated assembly and a private manifest."""
    symbols, raw_functions = declared_addresses(), raw_function_ranges()
    sections, lines, pointers, byte_count = {}, [".set noreorder", ".set noat", ""], 0, 0
    for section, body in elf_sections(raw_object):
        if not section.startswith(".raw_"):
            continue
        start = int(section[5:], 16)
        end = start + len(body)
        if any(start < hi and lo < end for lo, hi in raw_functions):
            continue
        output = f".n64data_{start:08X}"
        sections[output] = {"vram": f"0x{start:08X}", "size": f"0x{len(body):X}"}
        lines += [f'.section {output},"a",@progbits', f"D_{start:08X}:"]
        at = 0
        while at < len(body):
            address = start + at
            if address % 4 == 0 and at + 4 <= len(body):
                value = int.from_bytes(body[at:at + 4], "big")
                if value in symbols:
                    lines.append(f"    .word {symbols[value]}")
                    pointers += 1
                else:
                    lines.append(f"    .word 0x{value:08X}")
                at += 4
            else:
                lines.append(f"    .byte 0x{body[at]:02X}")
                at += 1
        lines.append("")
        byte_count += len(body)
    generated = config_project / "generated"
    manifests = config_project / "manifests"
    generated.mkdir(parents=True, exist_ok=True)
    manifests.mkdir(parents=True, exist_ok=True)
    (generated / "main_data.s").write_text("\n".join(lines))
    manifest = {"schema": "n64dk-data-sources/1", "sources": [{
        "image": "main", "name": "main-data", "source": "generated/main_data.s",
        "source_root": "config", "pipeline": "gnu-as", "sections": sections,
    }]}
    (manifests / "data_sources.json").write_text(json.dumps(manifest, indent=1, sort_keys=True) + "\n")
    return {"sections": len(sections), "bytes": byte_count, "pointer_relocations": pointers}


def sha1(data: bytes) -> str:
    return hashlib.sha1(data).hexdigest()


def first_difference(a: bytes, b: bytes) -> int | None:
    for i, (left, right) in enumerate(zip(a, b)):
        if left != right:
            return i
    return min(len(a), len(b)) if len(a) != len(b) else None


def extract(args) -> int:
    data = Path(args.rom).expanduser().resolve().read_bytes()
    if len(data) != ROM_SIZE:
        raise SystemExit(f"wrong ROM size: got 0x{len(data):X}, expected 0x{ROM_SIZE:X}")
    actual = sha1(data)
    if actual != ROM_SHA1:
        raise SystemExit(f"wrong ROM SHA-1: {actual}; expected {ROM_SHA1}")
    build = Path(args.build)
    project = build / "project"
    project.mkdir(parents=True, exist_ok=True)
    (project / "baserom.z64").write_bytes(data)
    for name in ("functions.toml", "symbol_addrs.txt", "sdk_symbols.txt", "layout.json"):
        shutil.copy2(ROOT / "config" / name, project / name)
    shutil.copy2(ROOT / "config" / "project.toml", project / "n64dk.toml")
    (build / "EXTRACTED.json").write_text(json.dumps({
        "schema": "jeopardy-extract/1", "rom_sha1": actual, "rom_bytes": len(data),
        "note": "private local build input; never commit build/",
    }, indent=1, sort_keys=True) + "\n")
    print(f"extracted and verified private build input: {build}")
    return 0


def stage(name: str, built: bytes, target: bytes, base: int = 0) -> dict:
    first = first_difference(built, target)
    return {"name": name, "bytes": len(target), "expected_sha1": sha1(target),
            "actual_sha1": sha1(built), "passed": first is None,
            "first_difference": None if first is None else f"0x{base + first:X}",
            "differing_bytes": sum(a != b for a, b in zip(built, target)) + abs(len(built) - len(target))}


def build(args) -> int:
    build_dir = Path(args.build).resolve()
    project = build_dir / "project"
    reference_path = project / "baserom.z64"
    if not reference_path.is_file():
        raise SystemExit("missing extracted input; run make extract BASEROM=... first")
    reference = reference_path.read_bytes()
    relink = Path(tempfile.mkdtemp(prefix="jeopardy-relink."))
    inventory = Path(tempfile.mkdtemp(prefix="jeopardy-inventory."))
    command = shlex.split(args.n64dk) + ["relink-image", str(ROOT), "--project", str(project),
        "--image", "main", "--build", str(inventory), "--linker", "kit", "--keep-image"]
    if args.toolchain_dir:
        command += ["--toolchain-dir", args.toolchain_dir]
    try:
        private_manifest = project / "manifests" / "data_sources.json"
        private_source = project / "generated" / "main_data.s"
        private_manifest.unlink(missing_ok=True)
        private_source.unlink(missing_ok=True)
        inventory_result = subprocess.run(command, env=dict(os.environ))
        shutil.copy2(inventory / "RELINK.json", build_dir / "INVENTORY_RELINK.json") if (inventory / "RELINK.json").is_file() else None
        if inventory_result.returncode not in (0, 1) or not (inventory / "RELINK.json").is_file():
            raise SystemExit(f"n64dk inventory relink failed (exit {inventory_result.returncode})")
        inventory_report = json.loads((inventory / "RELINK.json").read_text())
        inventory_units = inventory_report.get("units") or {}
        if (inventory_units.get("linked", 0) < EXPECTED_LINKED_UNITS or
                inventory_units.get("raw_members_by_reason") not in (None, {})):
            raise SystemExit("inventory source link incomplete; refusing to classify build failures as data: "
                             f"linked={inventory_units.get('linked')!r}, "
                             f"raw={inventory_units.get('raw_members_by_reason')!r}")
        generated_data = generate_data_sources(inventory / "raw" / "raw.o", project) if (inventory / "raw" / "raw.o").is_file() else {"sections": 0, "bytes": 0, "pointer_relocations": 0, "note": "nothing in the main segment is cut from the ROM"}
        final_command = shlex.split(args.n64dk) + ["relink-image", str(ROOT), "--project", str(project),
            "--image", "main", "--build", str(relink), "--linker", "kit", "--keep-image"]
        if args.toolchain_dir:
            final_command += ["--toolchain-dir", args.toolchain_dir]
        result = subprocess.run(final_command, env=dict(os.environ))
        report_path = relink / "RELINK.json"
        if not report_path.is_file():
            raise SystemExit(f"n64dk relink did not write {report_path} (exit {result.returncode})")
        relink_report = json.loads(report_path.read_text())
        shutil.copy2(report_path, build_dir / "FINAL_RELINK.json")
        units = relink_report.get("units") or {}
        raw_reasons = units.get("raw_members_by_reason") or {}
        if units.get("linked", 0) < EXPECTED_LINKED_UNITS or raw_reasons not in (None, {}):
            raise SystemExit(
                f"source link incomplete: expected {EXPECTED_LINKED_UNITS} linked units and no "
                f"raw unit; got linked={units.get('linked')!r}, raw={raw_reasons!r}"
            )
        linked_main = (relink / "relinked.bin").read_bytes()
    finally:
        shutil.rmtree(relink, ignore_errors=True)
        shutil.rmtree(inventory, ignore_errors=True)
    main_target = reference[MAIN[0]:MAIN[1]]
    if len(linked_main) != len(main_target):
        raise SystemExit(f"linked main has 0x{len(linked_main):X} bytes; expected 0x{len(main_target):X}")
    cartridge = bytearray(reference)
    cartridge[MAIN[0]:MAIN[1]] = linked_main
    output = build_dir / "jeopardy.z64"
    output.write_bytes(cartridge)
    code_built = linked_main[CODE[0] - MAIN[0]:CODE[1] - MAIN[0]]
    stages = [stage("code", code_built, reference[CODE[0]:CODE[1]], CODE[0]),
              stage("main", linked_main, main_target, MAIN[0]),
              stage("whole_rom", bytes(cartridge), reference, 0)]
    report = {"schema": "jeopardy-cartridge-build/1", "source_units": 805,
              "generated_data": generated_data, "stages": stages,
              "relink": relink_report, "output": str(output),
              "all_passed": all(item["passed"] for item in stages)}
    (build_dir / "BUILD_REPORT.json").write_text(json.dumps(report, indent=1, sort_keys=True) + "\n")
    for item in stages:
        word = "PASS" if item["passed"] else "FAIL"
        detail = "" if item["passed"] else f"; first difference {item['first_difference']}"
        print(f"{word} {item['name']}: {item['actual_sha1']} ({item['differing_bytes']} differing bytes{detail})")
    return 0 if report["all_passed"] else 1


def clean(args) -> int:
    build_dir = Path(args.build).resolve()
    if build_dir.name in ("", ".", "..") or build_dir == ROOT or ROOT in build_dir.parents:
        raise SystemExit(f"refusing unsafe build directory: {build_dir}")
    if build_dir.exists():
        shutil.rmtree(build_dir)
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    sub = parser.add_subparsers(dest="action", required=True)
    p = sub.add_parser("extract"); p.add_argument("--rom", required=True); p.add_argument("--build", required=True); p.set_defaults(func=extract)
    p = sub.add_parser("build"); p.add_argument("--build", required=True); p.add_argument("--n64dk", default="n64dk"); p.add_argument("--toolchain-dir"); p.set_defaults(func=build)
    p = sub.add_parser("clean"); p.add_argument("--build", required=True); p.set_defaults(func=clean)
    args = parser.parse_args()
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())
