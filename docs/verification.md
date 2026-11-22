# Verification contract

This repository distinguishes ordinary C (including original compiler pragmas), assembly-assisted
C, original hand-written assembly, fixed-link equality, and whole-cartridge equality.

Every catalogued function must have a `provenance/main/*.json` record whose source path and SHA-256
match a checked-in file. Ordinary C receives ordinary-C credit only when `reproduced_by` is exactly
`C`. Inline-assembly macros and original assembly remain separately identified; an original
compiler pragma without assembly remains ordinary C.

Completion requires all of the following:

1. 805/805 functions link from source;
2. 179/179 data sources link successfully;
3. no raw program bytes, holes, overlaps, unresolved symbols, or differing bytes;
4. code SHA-1 `bb52f3b494108cbea913ae729300afbfafd3718e`;
5. main-image SHA-1 `9866a60305c9ade6f16b29114af08638a2dacfeb`; and
6. cartridge SHA-1 `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed`.

The tracker reports 187,992 matched data bytes: 183,529 bytes owned by the explicit data-source
manifest and 4,463 bytes emitted alongside compiled function units. This is the main program's
non-text source output, not the header, IPL3, or cartridge assets extracted outside that image.

`tools/generate_tracker_progress.py` validates source hashes and the checked-in clean-build reports
before emitting tracker data. Generated assembly, masked comparisons, unresolved-address
assumptions, or raw ROM slices cannot satisfy this contract.
