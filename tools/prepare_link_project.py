#!/usr/bin/env python3
"""Materialize the compact link manifest as an n64dk relink project."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import shutil
from pathlib import Path

ROM_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=Path("."))
    parser.add_argument("--out", required=True, type=Path)
    args = parser.parse_args()
    root = args.root.resolve()
    out = args.out.resolve()
    if out.exists():
        shutil.rmtree(out)
    (out / "provenance/main").mkdir(parents=True)
    (out / "config").mkdir()
    (out / "symbols").mkdir()
    (out / "raw").mkdir()

    rows = list(csv.DictReader((root / "link/units.tsv").open(), delimiter="\t"))
    if len(rows) != 805 or len({row["function"] for row in rows}) != 805:
        raise SystemExit("link/units.tsv must contain exactly 805 unique functions")
    for row in rows:
        source = root / row["file"]
        if not source.is_file():
            raise SystemExit(f"missing source: {row['file']}")
        if hashlib.sha256(source.read_bytes()).hexdigest() != row["source_sha256"]:
            raise SystemExit(f"source digest changed: {row['file']}")
        recipe = {"pipeline": row["pipeline"], "flags": row["flags"]}
        if row.get("assembler"):
            recipe["assembler"] = row["assembler"]
        record = {
            "schema": "jeopardy-link-unit/1",
            "unit": f"main/{row['function']}",
            "image": "main",
            "function": row["function"],
            "vram": row["vram"],
            "offset": row["offset"],
            "size": row["size"],
            "code_size": row["code_size"],
            "status": row["status"],
            "kind": row["kind"],
            "file": "../../" + row["file"],
            "recipe": recipe,
        }
        path = out / "provenance/main" / f"{row['function']}.json"
        path.write_text(json.dumps(record, indent=2, sort_keys=True) + "\n")

    shutil.copy2(root / "config/layout.json", out / "config/layout.json")
    for source in sorted((root / "config/run/symbols").glob("*.txt")):
        shutil.copy2(source, out / "symbols" / source.name)
    (out / "raw/manifest.tsv").write_text(
        "# generated link project; executable units always come from source\n"
        f"# rom_sha1 {ROM_SHA1}\n"
        "# image\tfunction\tsource\toffset\tsize\tsha256\n"
    )
    (out / "GENERATED.json").write_text(json.dumps({
        "schema": "jeopardy-link-project/1",
        "counts": {"assembly": 406, "exact": 399, "assumed": 0, "raw": 0},
        "note": "materialized from link/units.tsv; no ROM bytes are stored here",
    }, indent=2, sort_keys=True) + "\n")
    print(f"prepared {len(rows)} source-owned link units in {out}")


if __name__ == "__main__":
    main()
