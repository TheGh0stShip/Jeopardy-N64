#!/usr/bin/env python3
"""Regenerate the minimal, truthful N64DK generated-project manifest."""

from __future__ import annotations

import hashlib
import json
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    units = {}
    counts = Counter()
    files = {}
    for provenance in sorted((ROOT / "provenance/main").glob("*.json")):
        row = json.loads(provenance.read_text())
        source = ROOT / row["file"]
        unit_files = [row["file"], str(provenance.relative_to(ROOT))]
        for item in (source, provenance):
            files[str(item.relative_to(ROOT))] = digest(item)
        units[row["unit"]] = {
            "files": unit_files,
            "inputs": row.get("inputs_sha256", ""),
            "kind": row["kind"],
            "receipt": row.get("receipt", "none"),
            "status": row["status"],
        }
        counts[row["status"]] += 1
    for folder in ("manifests", "symbols"):
        for path in sorted((ROOT / folder).rglob("*")):
            if path.is_file():
                files[str(path.relative_to(ROOT))] = digest(path)
    manifest = {
        "schema": "n64dk-generated-project/1",
        "credit": "Generated-project identity and source inventory; matching credit comes only from strict verification and the fixed-link SHA-1 gates.",
        "counts": {**dict(sorted(counts.items())), "all": len(units)},
        "files": dict(sorted(files.items())),
        "inputs": {"rom_sha1": "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"},
        "units": units,
    }
    (ROOT / "GENERATED.json").write_text(json.dumps(manifest, indent=1, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
