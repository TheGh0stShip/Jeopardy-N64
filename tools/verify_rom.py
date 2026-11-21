#!/usr/bin/env python3
"""Verify a user-supplied Jeopardy! USA ROM without retaining its bytes."""

from __future__ import annotations

import hashlib
import sys
from pathlib import Path

EXPECTED_SIZE = 4_194_304
EXPECTED_SHA1 = "c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed"


def main() -> int:
    if len(sys.argv) != 2:
        print(f"usage: {Path(sys.argv[0]).name} ROM", file=sys.stderr)
        return 2
    path = Path(sys.argv[1])
    digest = hashlib.sha1(path.read_bytes()).hexdigest()
    size = path.stat().st_size
    if (size, digest) != (EXPECTED_SIZE, EXPECTED_SHA1):
        print(f"wrong ROM: size={size} sha1={digest}", file=sys.stderr)
        return 1
    print(f"verified Jeopardy! USA ROM: {digest}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

