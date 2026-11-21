#!/usr/bin/env python3
"""Validate the scoped manifests and emit DecompHub and objdiff reports."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
from pathlib import Path


def rows(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8", newline="") as stream:
        return list(csv.DictReader(stream, delimiter="\t", strict=True))


def key(row: dict[str, str]) -> tuple[str, int]:
    return row["image"], int(row["vram"], 0)


def generate(root: Path) -> tuple[dict, dict]:
    config = json.loads((root / "progress-config.json").read_text())
    inventory = rows(root / "progress-inventory.tsv")
    matched_rows = rows(root / "MATCHED.tsv")
    matched = {key(row): row for row in matched_rows}
    if not inventory or len(matched) != len(matched_rows):
        raise ValueError("inventory must be non-empty and matches unique")

    seen: set[tuple[str, int]] = set()
    files: set[Path] = set()
    units = []
    total_bytes = matched_bytes = 0
    for row in inventory:
        unit_key = key(row)
        size = int(row["code_size"], 0)
        if unit_key in seen or size <= 0:
            raise ValueError(f"duplicate or invalid inventory row: {unit_key}")
        seen.add(unit_key)
        total_bytes += size
        exact = row["outcome"] in {"exact", "donor"} and row["reproduced_by"] == "C"
        if exact:
            published = matched.get(unit_key)
            if published is None:
                raise ValueError(f"credited row missing from MATCHED.tsv: {unit_key}")
            source = Path(row["source"])
            if source.is_absolute() or ".." in source.parts or source.suffix != ".c":
                raise ValueError(f"invalid source path: {source}")
            data = (root / source).read_bytes()
            if hashlib.sha256(data).hexdigest() != row["source_sha256"]:
                raise ValueError(f"source digest changed: {source}")
            files.add(source)
            matched_bytes += size
        elif unit_key in matched:
            raise ValueError(f"MATCHED.tsv credits an unresolved row: {unit_key}")
        measures = {
            "total_code": str(size), "matched_code": str(size if exact else 0),
            "matched_code_percent": 100.0 if exact else 0.0,
            "fuzzy_match_percent": 100.0 if exact else 0.0,
            "total_functions": 1, "matched_functions": int(exact),
            "matched_functions_percent": 100.0 if exact else 0.0,
            "total_units": 1, "complete_code": "0", "complete_code_percent": 0.0,
            "complete_units": 0,
        }
        units.append({
            "name": f"{row['image']}/{row['function']}@{row['vram']}",
            "measures": measures,
            "functions": [{"name": row["function"], "size": str(size),
                           "address": str(int(row["vram"], 0)),
                           "fuzzy_match_percent": 100.0 if exact else 0.0}],
            "metadata": {"progress_categories": ["catalogued-code"],
                         **({"source_path": row["source"]} if exact else {})},
        })

    if set(matched) != {key(row) for row in inventory if row["outcome"] in {"exact", "donor"} and row["reproduced_by"] == "C"}:
        raise ValueError("strict inventory and MATCHED.tsv differ")
    published_files = {p.relative_to(root) for p in (root / "src").rglob("*.c")}
    if files != published_files:
        raise ValueError("published C sources and strict matches differ")

    ratio = lambda done, total, unit: {"kind": "ratio", "completed": done, "total": total, "unit": unit}
    progress = {
        "format": "decomphub.progress/v1", "repository": config["repository"],
        "tracks": [
            {"id": "matching-code", "label": "Matching decompiled C code", "scope": config["scope"],
             "measurement": ratio(matched_bytes, total_bytes, "bytes")},
            {"id": "matching-functions", "label": "C-decompiled function candidates", "scope": config["scope"],
             "measurement": ratio(len(matched), len(inventory), "functions")},
        ],
    }
    totals = {
        "total_code": str(total_bytes), "matched_code": str(matched_bytes),
        "matched_code_percent": 100 * matched_bytes / total_bytes,
        "fuzzy_match_percent": 100 * matched_bytes / total_bytes,
        "total_functions": len(inventory), "matched_functions": len(matched),
        "matched_functions_percent": 100 * len(matched) / len(inventory),
        "total_units": len(inventory), "complete_code": "0", "complete_code_percent": 0.0,
        "complete_units": 0,
    }
    report = {"version": 2, "measures": totals, "units": units,
              "categories": [{"id": "catalogued-code", "name": "Catalogued executable code", "measures": totals}]}
    return progress, report


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    progress, report = generate(root)
    outputs = {root / "decomphub.progress.json": progress, root / "build/report.json": report}
    for path, value in outputs.items():
        rendered = json.dumps(value, indent=2) + "\n"
        if args.check:
            if not path.exists() or path.read_text() != rendered:
                raise SystemExit(f"{path.relative_to(root)} is stale")
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(rendered)


if __name__ == "__main__":
    main()

