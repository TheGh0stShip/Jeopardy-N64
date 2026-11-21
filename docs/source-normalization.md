# Lift-source normalization audit

The Round 12 hand-off repeated a compatibility prelude at the top of each machine-lifted C
file. The repository replaces that repeated text with `src/main/n64dk_lift.h`. This is a
mechanical source-maintenance change, not a claim that the remaining lifted types have been
reconstructed.

The shared header deliberately defines only the fixed-width integer aliases and the two helper
forms actually used by credited sources: `M2C_UNK` and `M2C_FIELD`. It does **not** define
instruction placeholders or unsafe fallbacks such as `M2C_ERROR`, `M2C_CARRY`, `M2C_LWL`, or
`m2c_unhandled`. The publication gate rejects those forms.

## Compiler-output comparison

All 410 normalized kit-written C files and their original hand-off counterparts were compiled
with the same recorded compiler, assembler lane, flags, symbols, and ROM ranges. For every
file, the following fields were identical between the two runs:

- generated `.text` SHA-256;
- generated text size;
- exact/assumed/mismatch verdict;
- proof verdict and first differing byte.

The comparison found **0 differences across 410 files**. The generic batch verifier reported
390 strict, 9 data-assumed, and 11 unresolved in both runs. The broader corrected-catalogue
receipt replay supplied with the hand-off remains the authority for the published 410-function
strict-C set; it accepted all 480 credited C and assembly results on Transfer. The generic
batch result is recorded here to prove specifically that centralizing the prelude did not alter
compiler output, not as a replacement for that replay.

Run `python3 tools/normalize_lift_headers.py --check` to ensure the repeated prelude has not
returned, and `python3 tools/check_source_quality.py` to enforce the forbidden-placeholder
policy.
