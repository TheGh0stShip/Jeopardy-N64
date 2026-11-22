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


def load_data_sources() -> tuple[list[dict], int, int]:
    manifest = json.loads((ROOT / "manifests/data_sources.json").read_text())
    sources = manifest.get("sources", [])
    relink = json.loads((ROOT / "evidence/link/FINAL_RELINK.json").read_text())
    linked = relink.get("data_sources", {})
    if (manifest.get("schema") != "n64dk-data-sources/1" or len(sources) != 179
            or linked.get("configured") != len(sources) or linked.get("linked") != len(sources)
            or linked.get("failed")):
        raise ValueError("source-data manifest or link evidence is incomplete")
    explicit_bytes = 0
    for row in sources:
        source = Path(row["source"])
        if source.is_absolute() or ".." in source.parts or not (ROOT / source).is_file():
            raise ValueError(f"unsafe or missing data source: {source}")
        size = sum(int(section["size"], 0) for section in row["sections"].values())
        if size <= 0:
            raise ValueError(f"empty data source: {row['name']}")
        row["tracked_size"] = size
        explicit_bytes += size
    total_bytes = int(relink.get("source_data_bytes", 0))
    attached_bytes = total_bytes - explicit_bytes
    if total_bytes != 187992 or explicit_bytes != 183529 or attached_bytes != 4463:
        raise ValueError("source-data byte totals changed without review")
    return sources, total_bytes, attached_bytes


def ratio(done: int, total: int, unit: str) -> dict:
    return {"kind": "ratio", "completed": done, "total": total, "unit": unit}


def generate() -> tuple[dict, dict, str, str, str]:
    records = load_provenance()
    validate_link()
    data_sources, data_bytes, attached_data_bytes = load_data_sources()
    total_bytes = sum(int(row["code_size"], 0) for row in records)
    ordinary = [row for row in records if row["reproduced_by"] == "C"]
    donor_c = [row for row in ordinary if row.get("kind") == "donor-c"]
    project_c = [row for row in ordinary if row.get("kind") != "donor-c"]
    assisted = [row for row in records if row["reproduced_by"].startswith("C with an assembly")]
    assembly = [row for row in records if row["status"] == "assembly"]
    if len(ordinary) + len(assisted) + len(assembly) != EXPECTED_FUNCTIONS:
        raise ValueError("unclassified source units")
    c_bytes = sum(int(row["code_size"], 0) for row in ordinary)
    donor_c_bytes = sum(int(row["code_size"], 0) for row in donor_c)
    project_c_bytes = sum(int(row["code_size"], 0) for row in project_c)
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
        ("matching-data", "Data reproduced from byte-identical source", data_bytes, data_bytes, "bytes"),
    ]
    progress = {
        "format": "decomphub.progress/v1",
        "repository": "https://github.com/TheGh0stShip/Jeopardy-N64",
        "tracks": [
            {"id": ident, "label": label, "scope": scope, "measurement": ratio(done, total, unit)}
            for ident, label, done, total, unit in tracks
        ],
    }

    def measures(done_bytes: int, done_functions: int, *, total_data: int = 0,
                 matched_data: int = 0, total_units: int = EXPECTED_FUNCTIONS,
                 complete_units: int | None = None) -> dict:
        if complete_units is None:
            complete_units = done_functions
        return {
            "total_code": str(total_bytes), "matched_code": str(done_bytes),
            "matched_code_percent": 100 * done_bytes / total_bytes,
            "fuzzy_match_percent": 0.0, "total_functions": EXPECTED_FUNCTIONS,
            "matched_functions": done_functions,
            "matched_functions_percent": 100 * done_functions / EXPECTED_FUNCTIONS,
            "total_data": str(total_data), "matched_data": str(matched_data),
            "matched_data_percent": 100 * matched_data / total_data if total_data else 0.0,
            "complete_data": str(matched_data),
            "complete_data_percent": 100 * matched_data / total_data if total_data else 0.0,
            "total_units": total_units, "complete_code": str(done_bytes),
            "complete_code_percent": 100 * done_bytes / total_bytes,
            "complete_units": complete_units,
        }

    data_unit_count = len(data_sources) + 1  # explicit objects plus data emitted by function units
    totals = measures(total_bytes, EXPECTED_FUNCTIONS, total_data=data_bytes,
                      matched_data=data_bytes, total_units=EXPECTED_FUNCTIONS + data_unit_count,
                      complete_units=EXPECTED_FUNCTIONS + data_unit_count)
    ctotals = measures(c_bytes, len(ordinary))
    project_c_totals = measures(project_c_bytes, len(project_c))
    donor_c_totals = measures(donor_c_bytes, len(donor_c))
    assisted_totals = measures(assisted_bytes, len(assisted))
    assembly_totals = measures(assembly_bytes, len(assembly))
    data_totals = measures(0, 0, total_data=data_bytes, matched_data=data_bytes,
                           total_units=data_unit_count, complete_units=data_unit_count)
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
                "total_data": "0", "matched_data": "0", "matched_data_percent": 0.0,
                "complete_data": "0", "complete_data_percent": 0.0,
                "complete_code": str(size), "complete_code_percent": 100.0,
                "complete_units": 1,
            },
            "functions": [{"name": row["function"], "size": str(size),
                           "address": str(int(row["vram"], 0)), "fuzzy_match_percent": 0.0}],
            "metadata": {"progress_categories": ["catalogued-code"], "complete": True,
                         "source_path": row["file"]},
        })
    for row in data_sources:
        size = row["tracked_size"]
        first_vram = min(int(section["vram"], 0) for section in row["sections"].values())
        units.append({
            "name": f"main-data/{row['name']}@0x{first_vram:08X}",
            "measures": {
                "total_code": "0", "matched_code": "0", "matched_code_percent": 0.0,
                "fuzzy_match_percent": 0.0, "total_data": str(size),
                "matched_data": str(size), "matched_data_percent": 100.0,
                "complete_data": str(size), "complete_data_percent": 100.0,
                "total_functions": 0, "matched_functions": 0,
                "matched_functions_percent": 0.0, "total_units": 1,
                "complete_code": "0", "complete_code_percent": 0.0, "complete_units": 1,
            },
            "functions": [],
            "metadata": {"progress_categories": ["catalogued-data"], "complete": True,
                         "source_path": row["source"]},
        })
    units.append({
        "name": "main-data/function-owned-rodata",
        "measures": {
            "total_code": "0", "matched_code": "0", "matched_code_percent": 0.0,
            "fuzzy_match_percent": 0.0, "total_data": str(attached_data_bytes),
            "matched_data": str(attached_data_bytes), "matched_data_percent": 100.0,
            "complete_data": str(attached_data_bytes), "complete_data_percent": 100.0,
            "total_functions": 0, "matched_functions": 0,
            "matched_functions_percent": 0.0, "total_units": 1,
            "complete_code": "0", "complete_code_percent": 0.0, "complete_units": 1,
        },
        "functions": [],
        "metadata": {"progress_categories": ["catalogued-data"], "complete": True,
                     "source_path": "src/main"},
    })
    report = {
        "version": 2, "measures": totals, "units": units,
        "categories": [
            {"id": "catalogued-code", "name": "Byte-identical source", "measures": totals},
            {"id": "matching-c", "name": "Ordinary matching C", "measures": ctotals},
            {"id": "jeopardy-c", "name": "Jeopardy-derived ordinary C", "measures": project_c_totals},
            {"id": "same-sdk-donor-c", "name": "Same-SDK donor ordinary C", "measures": donor_c_totals},
            {"id": "assisted-c", "name": "Assembly-assisted C", "measures": assisted_totals},
            {"id": "original-assembly", "name": "Original hand-written assembly", "measures": assembly_totals},
            {"id": "catalogued-data", "name": "Source-owned main-program data", "measures": data_totals},
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
