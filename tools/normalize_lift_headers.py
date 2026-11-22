#!/usr/bin/env python3
"""Replace the repeated generated prelude with the audited shared header."""

from __future__ import annotations

import argparse
from pathlib import Path

START = "#ifndef N64DK_M2C_PRELUDE\n"
END = "#endif\n\n"
def normalized(text: str, replacement: str) -> str:
    if text.startswith(replacement):
        return text
    if not text.startswith(START):
        return text
    null_guard = text.index("#ifndef NULL\n")
    end = text.index(END, null_guard) + len(END)
    return replacement + text[end:]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    changed = []
    paths = sorted((root / "src/main").glob("*.c")) + sorted((root / "src/awaiting").glob("*.c"))
    for path in paths:
        text = path.read_text(encoding="utf-8")
        include = "n64dk_lift.h" if path.parent.name == "main" else "../main/n64dk_lift.h"
        result = normalized(text, f'#include "{include}"\n\n')
        if text != result:
            changed.append(path)
            if not args.check:
                path.write_text(result, encoding="utf-8")
    if args.check and changed:
        print(f"{len(changed)} lifted sources still contain generated preludes")
        return 1
    print(f"lift-header check passed for {len(paths)} sources")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

