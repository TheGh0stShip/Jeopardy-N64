#!/usr/bin/env python3
"""Run n64dk's pinned cartridge relink and enforce Jeopardy's completion contract."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import shlex
import shutil
import subprocess
import tempfile
from pathlib import Path

EXPECTED_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=Path("."))
    parser.add_argument("--project", required=True, type=Path)
    parser.add_argument("--source", required=True, type=Path)
    parser.add_argument("--build", required=True, type=Path)
    parser.add_argument("--out", required=True, type=Path)
    args = parser.parse_args()

    if args.build.exists():
        shutil.rmtree(args.build)
    args.build.mkdir(parents=True, exist_ok=True)
    scratch = Path(tempfile.mkdtemp(prefix="jeopardy-cartridge-relink."))
    command = shlex.split(os.environ.get("N64DK", "n64dk")) + [
        "--format", "json", "relink-cartridge", str(args.source.resolve()),
        "--project", str(args.project.resolve()), "--build", str(scratch),
        "--assumed", "raw", "--linker", "gnu-ld", "--keep-rom",
    ]
    toolchain = os.environ.get("TOOLCHAIN_DIR")
    if toolchain:
        command += ["--toolchain-dir", str(Path(toolchain).expanduser())]
    result = subprocess.run(command, text=True, capture_output=True)
    if result.returncode:
        raise SystemExit(result.stderr or result.stdout or f"n64dk exited {result.returncode}")
    (args.build / "command.json").write_text(result.stdout)

    report = json.loads((scratch / "CARTRIDGE.json").read_text())
    image = report["images"]["main"]
    relink = json.loads((scratch / "main/RELINK.json").read_text())
    failures = []
    if not report.get("rom_sha1_match") or report.get("differing_bytes") != 0:
        failures.append("cartridge is not byte-identical")
    if image.get("outcome") != "identical" or image.get("differing_bytes") != 0:
        failures.append("main image is not byte-identical")
    if image.get("coverage", {}).get("raw-unit") != 0:
        failures.append("one or more executable units came from the ROM")
    units = relink.get("units", {})
    if units.get("in_image") != 805 or units.get("linked") != 805:
        failures.append(f"not all 805 units linked: {units}")
    if units.get("objects_by_result") != {"linked-identical": 805}:
        failures.append(f"not all units linked identically: {units.get('objects_by_result')}")
    if relink.get("overlaps") or relink.get("problems") or relink.get("level_blockers"):
        failures.append("relink has overlaps, problems, or level blockers")
    cartridge = scratch / "cartridge.z64"
    digest = hashlib.sha1(cartridge.read_bytes()).hexdigest()
    if digest != EXPECTED_SHA1:
        failures.append(f"SHA-1 is {digest}, expected {EXPECTED_SHA1}")
    if failures:
        raise SystemExit("\n".join(failures))

    args.out.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(cartridge, args.out)
    shutil.copy2(scratch / "CARTRIDGE.json", args.build / "CARTRIDGE.json")
    shutil.copy2(scratch / "main/RELINK.json", args.build / "RELINK.json")
    shutil.rmtree(scratch)
    print("linked 805/805 executable units from source")
    print("raw executable units: 0")
    print(f"cartridge SHA-1: {digest}")


if __name__ == "__main__":
    main()
