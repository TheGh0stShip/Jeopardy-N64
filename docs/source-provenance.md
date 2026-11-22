# Source provenance

The complete function-level record is `provenance/main/` (805 JSON files).

| Source class | Functions | Code bytes |
|---|---:|---:|
| Ordinary matching C | 757 | 401,796 |
| Assembly-assisted C | 3 | 2,208 |
| Original hand-written assembly | 45 | 7,032 |
| **Total byte-identical source** | **805** | **411,036** |

Ordinary C includes game code, libultra/libaudio sources, reconstructed whole translation units,
and same-SDK functions first sourced through the Wheel of Fortune donor tree and independently
verified against Jeopardy. Origin information is retained in each provenance record and
`tools/origin.tsv`.

The three assisted C functions are documented in `tools/assisted_provenance.tsv`. They comprise a
libgcc multiply macro, a deliberate trap macro, and IDO's `sqrtf` intrinsic directive. The 45
assembly routines are documented in `tools/asm_provenance.tsv`; these are boot, exception, cache,
thread, RSP, and other routines whose original implementation is assembly.

Toolchains are not distributed. Recipes identify KMC GCC 2.7.2/ASN64, SGI IDO 5.x, and GNU MIPS
assembly lanes required to reproduce the sources.
