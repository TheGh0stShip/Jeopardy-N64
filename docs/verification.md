# Verification contract

This repository distinguishes discovery, compilation, matching, linking, and whole-ROM reproduction.

## Matching C

A function may enter `MATCHED.tsv` only when:

1. its boundary and owned byte range are recorded in `progress-inventory.tsv`;
2. its published `.c` source compiles with a recorded compiler, assembler, flags, and context;
3. the complete owned instruction range is byte-identical to the target;
4. referenced constants, jump tables, and address-sensitive data are either compared or explicitly resolved from independently reviewed symbols;
5. the source hash in the manifest matches the published file; and
6. the source contains no inline assembly or compatibility macro that would make ordinary-C credit misleading.

Donor or SDK C may receive credit only after it is rebuilt against this ROM. Provenance must remain recorded.

## Fully linked source

Function-level equality does not by itself prove a linked project. Fully linked credit requires a pinned image or whole-ROM relink that consumes the published source. The relink manifest must bind each credited range to its source hash.

## Complete project

The completion target is a conventional source tree with shared headers, identified toolchains, deterministic extraction and asset rebuilding, and a one-command build that produces the target SHA-1. Original hand-written assembly remains assembly and is counted as reproduced source, not matching C.

## Catalogue status

The initial 814-function denominator is a ROM-derived preliminary catalogue. Boundary corrections may change the denominator, but every change must be reviewed, explained in commit history, and regenerate the tracker report atomically.

