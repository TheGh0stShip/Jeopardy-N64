# Jeopardy! (Nintendo 64) matching decompilation

Complete matching-source reconstruction of the USA Nintendo 64 release of **Jeopardy!**.
All 805 catalogued functions and every byte of the main program image are built from checked-in
source. A clean build reproduces the original cartridge bit for bit.

| Progress | Verified | Total | Share |
|---|---:|---:|---:|
| Byte-identical source | 805 functions / 411,036 bytes | 805 / 411,036 | **100.00%** |
| Fully linked source | 805 functions / 411,036 bytes | 805 / 411,036 | **100.00%** |
| Ordinary matching C | 757 functions / 401,796 bytes | 805 / 411,036 | **97.75% of code** |
| Assembly-assisted C | 3 functions / 2,208 bytes | 805 / 411,036 | 0.54% of code |
| Original hand-written assembly | 45 functions / 7,032 bytes | 805 / 411,036 | 1.71% of code |

[![Byte-identical source](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=matched_code_percent&label=Byte-identical%20source)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Fully linked](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=complete_code_percent&label=Fully%20linked)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Ordinary matching C](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=matching-c&measure=matched_code_percent&label=Ordinary%20matching%20C)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Functions](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=matched_functions&label=Functions)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)

## Verified build

| Stage | SHA-1 | Differing bytes |
|---|---|---:|
| Compiled code | `bb52f3b494108cbea913ae729300afbfafd3718e` | 0 |
| Main program image | `9866a60305c9ade6f16b29114af08638a2dacfeb` | 0 |
| Whole cartridge | `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed` | 0 |

The fixed-address relink contains 805/805 source units, 179 source data objects, no raw program
bytes, no holes, no overlaps, and no unresolved symbols. Header, IPL3 and assets outside the main
program are extracted from the user's legally obtained ROM; they are not distributed here.

## Target

| Property | Value |
|---|---|
| Region / revision | USA, revision 0 |
| Internal game code | `NJOE` |
| ROM size | 4,194,304 bytes |
| ROM SHA-1 | `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed` |
| ROM CRC | `69256460 B9A3F586` |
| CIC | 6102 |
| Compilers | KMC GCC 2.7.2 and SGI IDO 5.x |

## Build

ROM data and proprietary compilers are not included. With N64 Decomp Kit and the recorded
toolchains installed:

```sh
make extract BASEROM='/path/to/Jeopardy! (USA).z64'
make -j1
make verify
```

`make extract` verifies the ROM and creates private, ignored build inputs. Subsequent builds do
not read the original path. See [BUILD.md](BUILD.md) for requirements and gate details.

## Source layout

- `src/main/` — matching game, SDK, and library C, including reconstructed translation units.
- `donors/main/` — independently verified same-SDK C with retained provenance.
- `asm/main/` — the 45 provenance-confirmed original hand-written assembly functions.
- `src/data/` — typed C data and symbolic data assembly for the complete main image.
- `provenance/main/` and `receipts/main/` — per-function origin and strict verification records.
- `manifests/` and `recipes.tsv` — compiler, assembler, placement, and ownership recipes.
- `evidence/link/` — independently replayed fixed-link and SHA-1 reports.

The three assembly-assisted C functions are identified in `tools/assisted_provenance.tsv`; the
45 original assembly functions are documented in `tools/asm_provenance.tsv`. No generated
assembly fallback receives credit because none remains in the linked program.

## Verification policy

Tracker output is regenerated from all 805 provenance records and the clean-build evidence:

```sh
python3 tools/generate_tracker_progress.py --check
```

The primary tracker category is byte-identical source and is fully linked. Ordinary C remains a
separate category so original assembly and C that requires a documented compiler directive are
not misrepresented. See [docs/verification.md](docs/verification.md) and
[docs/source-provenance.md](docs/source-provenance.md).
