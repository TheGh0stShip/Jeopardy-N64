# Source provenance

The complete function-level record is `provenance/main/` (805 JSON files).

| Source class | Functions | Code bytes |
|---|---:|---:|
| Ordinary matching C | 758 | 401,804 |
| Assembly-assisted C | 2 | 2,200 |
| Original hand-written assembly | 45 | 7,032 |
| **Total byte-identical source** | **805** | **411,036** |

Ordinary C includes game code, libultra/libaudio sources, reconstructed whole translation units,
and same-SDK functions first sourced through the Wheel of Fortune donor tree and independently
verified against Jeopardy. Origin information is retained in each provenance record.

The two assisted C functions are the original libgcc inline multiply macro and a deliberate trap
macro; their evidence is recorded in their function provenance. IDO's `sqrtf` intrinsic pragma is
classified as ordinary C because it is the original libultra/libm C spelling and contains no
assembly. The 45 assembly routines likewise carry per-function provenance; these are boot,
exception, cache, thread, RSP, and other routines whose original implementation is assembly.

Toolchains are not distributed. Recipes identify KMC GCC 2.7.2/ASN64, SGI IDO 5.x, and GNU MIPS
assembly lanes required to reproduce the sources.
