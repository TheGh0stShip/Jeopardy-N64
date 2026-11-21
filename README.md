# Jeopardy! (Nintendo 64) matching decompilation

Matching decompilation of the USA Nintendo 64 release of **Jeopardy!**. The current source set reproduces 64.53% of catalogued executable bytes exactly; ordinary matching C accounts for 62.99%.

| Progress | Verified | Catalogued | Share |
|---|---:|---:|---:|
| Byte-identical source (C + original assembly) | 480 functions / 265,232 bytes | 805 / 411,016 | **64.53% of code** |
| Ordinary matching C | 443 functions / 258,880 bytes | 805 / 411,016 | **62.99% of code** |
| Hand-written assembly | 37 functions / 6,352 bytes | 805 / 411,016 | 1.55% of code |
| Not decompiled | 324 functions / 145,456 bytes | 805 / 411,016 | 35.39% of code |

[![Byte-identical source](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=matched_code_percent&label=Byte-identical%20source)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Ordinary matching C](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=matching-c&measure=matched_code_percent&label=Ordinary%20matching%20C)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Functions](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=matched_functions&label=Functions)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)

These are function-level matching results, not yet a whole-ROM rebuild. The project does **not** currently link a cartridge or reproduce the retail ROM SHA-1; ByteMatch fully-linked progress therefore remains zero until a pinned link and cartridge rebuild exist.

## Target

| Property | Value |
|---|---|
| Region / revision | USA, revision 0 |
| Internal game code | `NJOE` |
| ROM size | 4,194,304 bytes |
| ROM SHA-1 | `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed` |
| ROM CRC | `69256460 B9A3F586` |
| CIC | 6102 |
| Compiler families | KMC GCC 2.7.2; IDO 5.3 for part of libultra |

## Evidence

Every credited function was rebuilt with its recorded recipe and compared with its complete owned instruction range. A second machine replayed all 480 credited C/assembly results after applying three reviewed boundary corrections: 480 accepted, zero rejected, zero missing. The evidence is retained under `evidence/`, and the corrections and supporting operations are under `config/`.

- `src/main/` — 410 kit-written matching-C functions.
- `src/donor/wof/` — 33 Wheel of Fortune source functions independently rebuilt against Jeopardy; provenance is retained in `docs/source-provenance.md`.
- `asm/main/` — 37 verified original hand-written assembly functions.
- `asm/nonmatching/main/` — disassembly for the 324 functions still requiring decompilation; these receive no matching credit.
- `src/awaiting/` — one additional byte-identical C candidate withheld from credit because a referenced data address is undeclared.
- `MATCHED.tsv` and `progress-inventory.tsv` — the reviewed C list and complete corrected denominator.
- `build/report.json` — the ByteMatch/objdiff report generated from those manifests.

The 410 generated C files originally carried identical per-file compatibility preludes. They now include one audited shared header containing only fixed-width types, `M2C_UNK`, and the byte-offset `M2C_FIELD` helper. Unsafe placeholders such as `M2C_ERROR`, `M2C_CARRY`, unaligned-load no-ops, and `m2c_unhandled` are absent. Sixty files still use provisional unknown types and fourteen still use field-offset helpers; type/structure recovery remains source-quality work.

## Verification policy

- C receives matching credit only after exact original-toolchain recompilation and complete owned-range comparison.
- Donor C receives credit only after independent rebuilding against this ROM; provenance remains explicit.
- Original assembly counts as byte-identical source but remains separate from the ordinary-C category.
- Raw nonmatching assembly, awaiting-symbol candidates, masked-address comparisons, and compatibility shims receive no strict credit.
- Fully-linked credit requires a pinned linked image consuming the published sources.
- Completion requires a deterministic build that reproduces the target cartridge SHA-1.

See [the verification contract](docs/verification.md), [the import report](docs/import/REPORT.md), and [the unresolved queue](docs/UNRESOLVED.md).

## ROM setup

ROM data and proprietary compiler binaries are not included. Verify your legally obtained USA ROM with:

```sh
python3 tools/verify_rom.py '/path/to/Jeopardy! (USA).z64'
```

The current replay uses N64 Decomp Kit and the recorded manifests/receipts. A conventional one-command whole-ROM build remains the next project-level milestone.
