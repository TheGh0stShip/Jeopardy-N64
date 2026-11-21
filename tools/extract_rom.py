#!/usr/bin/env python3
"""Create the private, gitignored extraction input used by the cartridge rebuild."""

from __future__ import annotations

import argparse
import hashlib
import shutil
from pathlib import Path

EXPECTED_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"
EXPECTED_SIZE = 4_194_304


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rom", required=True, type=Path)
    parser.add_argument("--out", required=True, type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    data = args.rom.read_bytes()
    digest = hashlib.sha1(data).hexdigest()
    if len(data) != EXPECTED_SIZE or digest != EXPECTED_SHA1:
        raise SystemExit(
            f"wrong ROM: size={len(data)} sha1={digest}; expected {EXPECTED_SIZE} {EXPECTED_SHA1}"
        )

    out = args.out
    survey = out / "survey"
    survey.mkdir(parents=True, exist_ok=True)
    (out / "baserom.z64").write_bytes(data)
    config = (root / "config/n64dk.toml").read_text().replace("<home>", str(Path.home()))
    (out / "n64dk.toml").write_text(config)
    shutil.copy2(root / "config/functions.toml", survey / "functions.toml")
    for source in sorted((root / "config/run/symbols").glob("*.txt")):
        shutil.copy2(source, survey / source.name)
    print(f"extracted private reference: {out / 'baserom.z64'} ({digest})")


if __name__ == "__main__":
    main()
