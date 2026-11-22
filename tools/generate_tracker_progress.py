#!/usr/bin/env python3
"""Validate the completed source tree and emit ByteMatch/DecompHub reports."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
EXPECTED_FUNCTIONS = 805
ROM_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"


def load_provenance() -> list[dict]:
    records = []
    seen = set()
    for path in sorted((ROOT / "provenance/main").glob("*.json")):
        row = json.loads(path.read_text())
        key = (row["image"], int(row["vram"], 0))
        if key in seen:
            raise ValueError(f"duplicate provenance address: {key}")
        seen.add(key)
        source = Path(row["file"])
        if source.is_absolute() or ".." in source.parts:
            raise ValueError(f"unsafe source path: {source}")
        data = (ROOT / source).read_bytes()
        if hashlib.sha256(data).hexdigest() != row["source_sha256"]:
            raise ValueError(f"stale source digest: {source}")
        if row["status"] not in {"exact", "assembly"}:
            raise ValueError(f"non-source unit remains: {path.name}: {row['status']}")
        records.append(row)
    if len(records) != EXPECTED_FUNCTIONS:
        raise ValueError(f"expected {EXPECTED_FUNCTIONS} functions, found {len(records)}")
    return records


def validate_link() -> None:
    build = json.loads((ROOT / "evidence/link/BUILD_REPORT.json").read_text())
    relink = json.loads((ROOT / "evidence/link/FINAL_RELINK.json").read_text())
    stages = {stage["name"]: stage for stage in build["stages"]}
    expected = {
        "code": "bb52f3b494108cbea913ae729300afbfafd3718e",
        "main": "9866a60305c9ade6f16b29114af08638a2dacfeb",
        "whole_rom": ROM_SHA1,
    }
    if not build.get("all_passed") or build.get("source_units") != EXPECTED_FUNCTIONS:
        raise ValueError("whole-cartridge report is incomplete")
    if build.get("generated_data", {}).get("bytes") != 0:
        raise ValueError("main image still consumes extracted raw data")
    for name, digest in expected.items():
        stage = stages.get(name, {})
        if not (stage.get("passed") is True and stage.get("differing_bytes") == 0
                and stage.get("actual_sha1") == digest and stage.get("expected_sha1") == digest):
            raise ValueError(f"failed or stale {name} SHA-1 gate")
    units = relink.get("units", {})
    if not (relink.get("outcome") == "identical" and relink.get("differing_bytes") == 0
            and relink.get("raw_bytes") == 0 and relink.get("source_share") == 1.0
            and relink.get("holes") == 0 and not relink.get("overlaps")
            and not relink.get("problems") and units.get("in_image") == EXPECTED_FUNCTIONS
            and units.get("linked") == EXPECTED_FUNCTIONS
            and units.get("raw_members_by_reason") == {}):
        raise ValueError("final source relink is incomplete")


def ratio(done: int, total: int, unit: str) -> dict:
    return {"kind": "ratio", "completed": done, "total": total, "unit": unit}


def generate() -> tuple[dict, dict, str, str, str]:
    records = load_provenance()
    validate_link()
    total_bytes = sum(int(row["code_size"], 0) for row in records)
    ordinary = [row for row in records if row["reproduced_by"] == "C"]
    assisted = [row for row in records if row["reproduced_by"].startswith("C with an assembly")]
    assembly = [row for row in records if row["status"] == "assembly"]
    if len(ordinary) + len(assisted) + len(assembly) != EXPECTED_FUNCTIONS:
        raise ValueError("unclassified source units")
    c_bytes = sum(int(row["code_size"], 0) for row in ordinary)
    assisted_bytes = sum(int(row["code_size"], 0) for row in assisted)
    assembly_bytes = sum(int(row["code_size"], 0) for row in assembly)
    scope = (
        f"Jeopardy! USA revision 0, ROM SHA-1 {ROM_SHA1}. All {EXPECTED_FUNCTIONS} catalogued "
        "functions link from checked-in source; the main image and cartridge reproduce exactly. "
        "Ordinary C, assembly-assisted C, and original hand-written assembly remain separate categories."
    )
    tracks = [
        ("matching-source-code", "Code reproduced from byte-identical source", total_bytes, total_bytes, "bytes"),
        ("matching-source-functions", "Functions reproduced from byte-identical source", EXPECTED_FUNCTIONS, EXPECTED_FUNCTIONS, "functions"),
        ("matching-c-code", "Matching ordinary C code", c_bytes, total_bytes, "bytes"),
        ("matching-c-functions", "Functions reproduced as ordinary C", len(ordinary), EXPECTED_FUNCTIONS, "functions"),
        ("fully-linked-code", "Verified matching source linked in the cartridge", total_bytes, total_bytes, "bytes"),
    ]
    progress = {
        "format": "decomphub.progress/v1",
        "repository": "https://github.com/TheGh0stShip/Jeopardy-N64",
        "tracks": [
            {"id": ident, "label": label, "scope": scope, "measurement": ratio(done, total, unit)}
            for ident, label, done, total, unit in tracks
        ],
    }

    def measures(done_bytes: int, done_functions: int) -> dict:
        return {
            "total_code": str(total_bytes), "matched_code": str(done_bytes),
            "matched_code_percent": 100 * done_bytes / total_bytes,
            "fuzzy_match_percent": 0.0, "total_functions": EXPECTED_FUNCTIONS,
            "matched_functions": done_functions,
            "matched_functions_percent": 100 * done_functions / EXPECTED_FUNCTIONS,
            "total_units": EXPECTED_FUNCTIONS, "complete_code": str(done_bytes),
            "complete_code_percent": 100 * done_bytes / total_bytes,
            "complete_units": done_functions,
        }

    totals = measures(total_bytes, EXPECTED_FUNCTIONS)
    ctotals = measures(c_bytes, len(ordinary))
    assisted_totals = measures(assisted_bytes, len(assisted))
    assembly_totals = measures(assembly_bytes, len(assembly))
    units = []
    for row in sorted(records, key=lambda value: int(value["vram"], 0)):
        size = int(row["code_size"], 0)
        units.append({
            "name": f"main/{row['function']}@{row['vram']}",
            "measures": {
                "total_code": str(size), "matched_code": str(size),
                "matched_code_percent": 100.0, "fuzzy_match_percent": 0.0,
                "total_functions": 1, "matched_functions": 1,
                "matched_functions_percent": 100.0, "total_units": 1,
                "complete_code": str(size), "complete_code_percent": 100.0,
                "complete_units": 1,
            },
            "functions": [{"name": row["function"], "size": str(size),
                           "address": str(int(row["vram"], 0)), "fuzzy_match_percent": 0.0}],
            "metadata": {"progress_categories": ["catalogued-code"], "complete": True,
                         "source_path": row["file"]},
        })
    report = {
        "version": 2, "measures": totals, "units": units,
        "categories": [
            {"id": "catalogued-code", "name": "Byte-identical source", "measures": totals},
            {"id": "matching-c", "name": "Ordinary matching C", "measures": ctotals},
            {"id": "assisted-c", "name": "Assembly-assisted C", "measures": assisted_totals},
            {"id": "original-assembly", "name": "Original hand-written assembly", "measures": assembly_totals},
        ],
    }
    header = "image\tfunction\tvram\tcode_size\toutcome\treproduced_by\tsource\tsource_sha256\n"
    inventory = header + "".join(
        f"main\t{r['function']}\t{r['vram']}\t{r['code_size']}\t{r['status']}\t{r['reproduced_by']}\t{r['file']}\t{r['source_sha256']}\n"
        for r in sorted(records, key=lambda value: int(value["vram"], 0))
    )
    matched = header + "".join(
        f"main\t{r['function']}\t{r['vram']}\t{r['code_size']}\texact\tC\t{r['file']}\t{r['source_sha256']}\n"
        for r in sorted(ordinary, key=lambda value: int(value["vram"], 0))
    )
    links = "image\tfunction\tvram\tcode_size\tfile\tsource_sha256\n" + "".join(
        f"main\t{r['function']}\t{r['vram']}\t{r['code_size']}\t{r['file']}\t{r['source_sha256']}\n"
        for r in sorted(records, key=lambda value: int(value["vram"], 0))
    )
    return progress, report, inventory, matched, links


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    progress, report, inventory, matched, links = generate()
    outputs = {
        ROOT / "decomphub.progress.json": json.dumps(progress, indent=2) + "\n",
        ROOT / "build/report.json": json.dumps(report, indent=2) + "\n",
        ROOT / "progress-inventory.tsv": inventory,
        ROOT / "MATCHED.tsv": matched,
        ROOT / "link/units.tsv": links,
    }
    for path, rendered in outputs.items():
        if args.check:
            if not path.exists() or path.read_text() != rendered:
                raise SystemExit(f"{path.relative_to(ROOT)} is stale")
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(rendered)


if __name__ == "__main__":
    main()
