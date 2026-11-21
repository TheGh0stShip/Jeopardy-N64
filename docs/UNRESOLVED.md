# Unresolved functions

325 functions (145,784 bytes) are not settled after this run (effort `normal`).  Each has a reason, the techniques of the kit with what happened to each on it, the eligible next ones with their expected cost (measured in this run, else `unmeasured`), and the evidence that would justify trying again.  The full record is `report/unresolved_dossier.json`.  Nothing here is credit.

Retry: evidence 136, never 1, now 188 (`now`: a technique is still eligible, only rounds, budget or settings stopped it; `evidence`: the named change must come first; `never`: not a C target).

## Why

| reason code | functions | bytes | retry | evidence that justifies a retry |
|---|---:|---:|---|---|
| far-off-draft | 97 | 28,288 | evidence | a draft within the search ceiling (types, structure or declarations) |
| translation-differs | 53 | 57,004 | evidence | the differing form identified and reproduced by a compiler probe |
| round-limit | 42 | 4,692 | now | none: more rounds (an effort mode with more rounds, or --resume with --rounds) |
| unrecognised-difference | 23 | 2,408 | evidence | a person's comparison |
| translator-declined | 21 | 17,784 | evidence | translator support for the construct the detail names |
| no-recipe-identified | 16 | 3,448 | evidence | a recipe for its region (byte-identical calibration samples) |
| register-allocation-only | 14 | 792 | evidence | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit) |
| nonstandard-abi | 11 | 9,512 | evidence | its translation unit's neighbours, resolved with it |
| type-or-declaration | 11 | 1,376 | evidence | declarations of the types and globals it uses |
| stack-frame-differs | 9 | 588 | evidence | type or structure evidence that changes its frame (a local's size) |
| too-large | 9 | 12,564 | evidence | a large-function method (not in the kit) or a source supplied for it |
| draft-does-not-build | 8 | 5,188 | evidence | a draft that builds (its compile error fixed) |
| boundary-uncertain | 4 | 1,220 | evidence | an accepted boundary operation for its range |
| handwritten-assembly-unproven | 3 | 428 | evidence | an assembly source that reassembles to its bytes |
| control-flow-differs | 2 | 104 | evidence | a draft with another control-flow structure |
| boot-code | 1 | 60 | never | none: kept as assembly |
| data-not-owned | 1 | 328 | evidence | a declared placement (section base) of the data it references |

## Eligible next techniques

| technique | functions | expected builds (measured) | expected seconds (measured) | unmeasured |
|---|---:|---:|---:|---:|
| recipe-sweep | 160 | 0.0 | 0.0 | 160 |
| search | 40 | 0.0 | 0.0 | 40 |

## Techniques per case

How many unresolved cases each technique reached, by state (functions that were not attempted have no ledger).

| technique | attempted | exhausted | eligible | not-in-mode | withheld | switched-off | inapplicable | not-run | unavailable |
|---|---|---|---|---|---|---|---|---|---|
| ladder:drafts | 308 | 0 | 0 | 0 | 0 | 0 | 17 | 0 | 0 |
| ladder:drafts-x-recipes | 308 | 0 | 0 | 0 | 0 | 0 | 17 | 0 | 0 |
| ladder:recipe-retry | 139 | 0 | 0 | 0 | 36 | 0 | 29 | 121 | 0 |
| ladder:frame-fit | 125 | 0 | 0 | 0 | 0 | 0 | 17 | 183 | 0 |
| ladder:search | 32 | 91 | 0 | 0 | 0 | 0 | 184 | 18 | 0 |
| ladder:twin | 0 | 0 | 0 | 0 | 0 | 0 | 17 | 308 | 0 |
| ladder:region-recipe | 0 | 0 | 0 | 0 | 0 | 0 | 17 | 308 | 0 |
| ladder:unit-recipe | 0 | 0 | 0 | 0 | 0 | 0 | 17 | 308 | 0 |
| search | 0 | 90 | 40 | 0 | 0 | 0 | 195 | 0 | 0 |
| recipe-sweep | 0 | 0 | 160 | 0 | 0 | 0 | 165 | 0 | 0 |
| draft-options | 0 | 0 | 0 | 9 | 0 | 0 | 316 | 0 | 0 |
| refine | 0 | 0 | 0 | 0 | 0 | 0 | 325 | 0 | 0 |
| declare | 0 | 1 | 0 | 0 | 0 | 0 | 324 | 0 | 0 |
| large-function-reconstruction | 0 | 0 | 0 | 0 | 0 | 0 | 280 | 0 | 45 |

Large functions (over 0x400 bytes): 45 cases; large-function reconstruction is unavailable for 45 (not in the kit: sieve stage 10 (structural, large-function recovery) is not built; docs/large-functions.md holds its measurement gate).  Far-off drafts (the search withheld above its ceiling, 0x400 bytes or smaller): 142.

## Exhaustion

Effort `normal`: 188 cases still have an eligible technique; the stops say why the run ended.
- main: round limit: effort normal allows 1 round(s)

## Measured per technique (this run)

| technique | attempts | builds | builds per attempt | seconds per build | seconds per attempt |
|---|---:|---:|---:|---:|---:|
| declare | 0 | 0 | unmeasured | 0.0179 | unmeasured |
| sweep | 772 | 52,227 | 67.65 | 0.0132 | 0.782 |

## Functions (largest first)

| image | function | vram | size | reason | next technique (expected cost) | retry when |
|---|---|---|---:|---|---|---|
| main | func_80025A00 | 0x80025A00 | 0xECC | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002CE90 | 0x8002CE90 | 0xC74 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800148DC | 0x800148DC | 0xC70 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8000A7A0 | 0x8000A7A0 | 0x988 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002ADF0 | 0x8002ADF0 | 0x928 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001A330 | 0x8001A330 | 0x83C | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044834 | 0x80044834 | 0x828 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045FE4 | 0x80045FE4 | 0x818 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800156E0 | 0x800156E0 | 0x7DC | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80014090 | 0x80014090 | 0x7C4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002B718 | 0x8002B718 | 0x778 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80011D18 | 0x80011D18 | 0x760 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002142C | 0x8002142C | 0x6E4 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001C18C | 0x8001C18C | 0x6D4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80040738 | 0x80040738 | 0x6A4 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80012478 | 0x80012478 | 0x690 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800495A8 | 0x800495A8 | 0x670 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80049C18 | 0x80049C18 | 0x648 | draft-does-not-build | none | fix the compile error: lve-tog24jcn/worker1/253ffcce5836b3711035/func_80049C18.c:318: too few arguments to function /tmp/n64dk-resolve-tog24jcn/worker1/253ffcce5836b3711035/func_80049C18.c:345: too...; a draft that builds (its compile error fixed) |
| main | func_80022524 | 0x80022524 | 0x63C | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003B668 | 0x8003B668 | 0x63C | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80046804 | 0x80046804 | 0x624 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045064 | 0x80045064 | 0x614 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002C5F0 | 0x8002C5F0 | 0x5F0 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80013AB0 | 0x80013AB0 | 0x5E0 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80017D88 | 0x80017D88 | 0x5D4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002A84C | 0x8002A84C | 0x5A4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001C9DC | 0x8001C9DC | 0x580 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001CF5C | 0x8001CF5C | 0x580 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001D4DC | 0x8001D4DC | 0x580 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001E844 | 0x8001E844 | 0x580 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8000BC74 | 0x8000BC74 | 0x56C | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004A698 | 0x8004A698 | 0x568 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004AC08 | 0x8004AC08 | 0x54C | draft-does-not-build | none | fix the compile error: _8004AC08.c:109: warning: passing arg 1 of `memcpy' makes pointer from integer without a cast /tmp/n64dk-resolve-tog24jcn/worker1/f2de7bd3a88c27614cad/func_8004AC08.c:203: in...; a draft that builds (its compile error fixed) |
| main | func_80042214 | 0x80042214 | 0x548 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004CC54 | 0x8004CC54 | 0x548 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002A32C | 0x8002A32C | 0x520 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001345C | 0x8001345C | 0x4C4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001F0B4 | 0x8001F0B4 | 0x4B8 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800299A8 | 0x800299A8 | 0x4B4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003DCB4 | 0x8003DCB4 | 0x4A0 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003C638 | 0x8003C638 | 0x490 | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003F668 | 0x8003F668 | 0x43C | too-large | none | a large-function method (not in the kit) or a source supplied for it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800085D8 | 0x800085D8 | 0x430 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80015EBC | 0x80015EBC | 0x424 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80020C40 | 0x80020C40 | 0x420 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80024520 | 0x80024520 | 0x400 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003D7DC | 0x8003D7DC | 0x3AC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80020700 | 0x80020700 | 0x3A0 | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_80020174 | 0x80020174 | 0x360 | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_8004DA88 | 0x8004DA88 | 0x35C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80018AAC | 0x80018AAC | 0x340 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80043CC4 | 0x80043CC4 | 0x340 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80019414 | 0x80019414 | 0x338 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_8001314C | 0x8001314C | 0x310 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_8003D1A8 | 0x8003D1A8 | 0x300 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E5BC | 0x8003E5BC | 0x2F8 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8000C9A0 | 0x8000C9A0 | 0x2E4 | boundary-uncertain | none | an accepted boundary operation (blocked: boundary.fragment); an accepted boundary operation for its range |
| main | func_8000C338 | 0x8000C338 | 0x2C8 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_8004C888 | 0x8004C888 | 0x2B8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80005EA4 | 0x80005EA4 | 0x2B4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80006158 | 0x80006158 | 0x2B4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80008C88 | 0x80008C88 | 0x2B4 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_800288F8 | 0x800288F8 | 0x2B0 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003CF10 | 0x8003CF10 | 0x298 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80041ECC | 0x80041ECC | 0x298 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004A268 | 0x8004A268 | 0x298 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_80047DD8 | 0x80047DD8 | 0x28C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80021060 | 0x80021060 | 0x288 | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_8001F56C | 0x8001F56C | 0x25C | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80043A50 | 0x80043A50 | 0x25C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800036D4 | 0x800036D4 | 0x254 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8000348C | 0x8000348C | 0x248 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80028190 | 0x80028190 | 0x244 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80012D28 | 0x80012D28 | 0x23C | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80008F40 | 0x80008F40 | 0x234 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80040FB8 | 0x80040FB8 | 0x230 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80030C70 | 0x80030C70 | 0x22C | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_8003A670 | 0x8003A670 | 0x22C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004B65C | 0x8004B65C | 0x22C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003C178 | 0x8003C178 | 0x224 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004382C | 0x8004382C | 0x224 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_80002638 | 0x80002638 | 0x21C | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80042D04 | 0x80042D04 | 0x208 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80033124 | 0x80033124 | 0x200 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80026BEC | 0x80026BEC | 0x1FC | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048FE8 | 0x80048FE8 | 0x1F8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80011B24 | 0x80011B24 | 0x1F4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002EBA0 | 0x8002EBA0 | 0x1F4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004B248 | 0x8004B248 | 0x1E4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80028720 | 0x80028720 | 0x1D8 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003D608 | 0x8003D608 | 0x1D4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80041CFC | 0x80041CFC | 0x1D0 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044664 | 0x80044664 | 0x1D0 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004D5C0 | 0x8004D5C0 | 0x1CC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8002E030 | 0x8002E030 | 0x1C0 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003F058 | 0x8003F058 | 0x1C0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004D878 | 0x8004D878 | 0x1B8 | round-limit | search (unmeasured) | now |
| main | func_8001A180 | 0x8001A180 | 0x1B0 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003A454 | 0x8003A454 | 0x1B0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80028BA8 | 0x80028BA8 | 0x1A4 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8001554C | 0x8001554C | 0x194 | translation-differs | search (unmeasured) | now |
| main | func_800436A0 | 0x800436A0 | 0x18C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003BF28 | 0x8003BF28 | 0x188 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80043190 | 0x80043190 | 0x188 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80043518 | 0x80043518 | 0x188 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004D438 | 0x8004D438 | 0x188 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80018360 | 0x80018360 | 0x184 | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_800471BC | 0x800471BC | 0x184 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_80046F9C | 0x80046F9C | 0x180 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004B4DC | 0x8004B4DC | 0x180 | boundary-uncertain | none | an accepted boundary operation (blocked: boundary.fragment); an accepted boundary operation for its range |
| main | func_800337C0 | 0x800337C0 | 0x17C | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_80042FA4 | 0x80042FA4 | 0x178 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E9C8 | 0x8003E9C8 | 0x16C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80045678 | 0x80045678 | 0x16C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800443D8 | 0x800443D8 | 0x168 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8004C718 | 0x8004C718 | 0x168 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8001FD54 | 0x8001FD54 | 0x160 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_8003BCE8 | 0x8003BCE8 | 0x160 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8001FBF8 | 0x8001FBF8 | 0x15C | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80032FCC | 0x80032FCC | 0x158 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80047B98 | 0x80047B98 | 0x150 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80048708 | 0x80048708 | 0x150 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003EE18 | 0x8003EE18 | 0x14C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80041458 | 0x80041458 | 0x14C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80016548 | 0x80016548 | 0x148 | data-not-owned | none | a declared base of section .rodata (0x8000095C was inferred); a declaration of D_800D768C at 0x800D768C |
| main | func_80041668 | 0x80041668 | 0x144 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800478E0 | 0x800478E0 | 0x140 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004C208 | 0x8004C208 | 0x13C | round-limit | search (unmeasured) | now |
| main | func_800412B8 | 0x800412B8 | 0x138 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004D19C | 0x8004D19C | 0x134 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80012F64 | 0x80012F64 | 0x12C | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003DB88 | 0x8003DB88 | 0x12C | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045A24 | 0x80045A24 | 0x12C | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_80042884 | 0x80042884 | 0x124 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_80042AF8 | 0x80042AF8 | 0x120 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80047340 | 0x80047340 | 0x120 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800192F8 | 0x800192F8 | 0x11C | translation-differs | recipe-sweep (unmeasured) | now |
| main | func_8004BA98 | 0x8004BA98 | 0x11C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003A09C | 0x8003A09C | 0x114 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E8B4 | 0x8003E8B4 | 0x114 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_800291D8 | 0x800291D8 | 0x110 | translation-differs | search (unmeasured) | now |
| main | func_800292E8 | 0x800292E8 | 0x110 | translation-differs | search (unmeasured) | now |
| main | func_800485C8 | 0x800485C8 | 0x10C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800419BC | 0x800419BC | 0x104 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_80046E28 | 0x80046E28 | 0x104 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_800440C8 | 0x800440C8 | 0x100 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8004A508 | 0x8004A508 | 0x100 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003EB3C | 0x8003EB3C | 0xFC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80045EE8 | 0x80045EE8 | 0xFC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003C538 | 0x8003C538 | 0xF8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800417B8 | 0x800417B8 | 0xF8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800492B0 | 0x800492B0 | 0xF4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003A228 | 0x8003A228 | 0xEC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003C3A8 | 0x8003C3A8 | 0xEC | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80040EC4 | 0x80040EC4 | 0xEC | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800418C8 | 0x800418C8 | 0xEC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80042C18 | 0x80042C18 | 0xEC | round-limit | search (unmeasured) | now |
| main | func_80048D84 | 0x80048D84 | 0xEC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80040DDC | 0x80040DDC | 0xE8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800477F8 | 0x800477F8 | 0xE8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80047460 | 0x80047460 | 0xE4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80047AA8 | 0x80047AA8 | 0xE4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003CB68 | 0x8003CB68 | 0xE0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003FAA8 | 0x8003FAA8 | 0xE0 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80041C1C | 0x80041C1C | 0xE0 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80039F84 | 0x80039F84 | 0xDC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80045C68 | 0x80045C68 | 0xDC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E208 | 0x8003E208 | 0xD8 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_80047670 | 0x80047670 | 0xD8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800493A8 | 0x800493A8 | 0xD4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003ABCC | 0x8003ABCC | 0xD0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800491E0 | 0x800491E0 | 0xD0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003A314 | 0x8003A314 | 0xCC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003AB00 | 0x8003AB00 | 0xCC | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E498 | 0x8003E498 | 0xC4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80048C18 | 0x80048C18 | 0xC4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80007904 | 0x80007904 | 0xC0 | translator-declined | none | translator support for the construct the detail names; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80017CC8 | 0x80017CC8 | 0xC0 | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80013090 | 0x80013090 | 0xBC | translator-declined | recipe-sweep (unmeasured) | now |
| main | func_80043460 | 0x80043460 | 0xB8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004036C | 0x8004036C | 0xB4 | handwritten-assembly-unproven | none | an assembly source that reassembles to its bytes; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044280 | 0x80044280 | 0xB4 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800458BC | 0x800458BC | 0xB4 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80042164 | 0x80042164 | 0xB0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80047748 | 0x80047748 | 0xB0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003AD80 | 0x8003AD80 | 0xAC | handwritten-assembly-unproven | recipe-sweep (unmeasured) | now |
| main | func_80042768 | 0x80042768 | 0xAC | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048E78 | 0x80048E78 | 0xAC | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8002DB04 | 0x8002DB04 | 0xA8 | translation-differs | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8003BE48 | 0x8003BE48 | 0xA8 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003F47C | 0x8003F47C | 0xA8 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_800433B8 | 0x800433B8 | 0xA8 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80045B50 | 0x80045B50 | 0xA8 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_80048CDC | 0x80048CDC | 0xA8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004C3C8 | 0x8004C3C8 | 0xA8 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003A89C | 0x8003A89C | 0xA0 | round-limit | search (unmeasured) | now |
| main | func_8003E358 | 0x8003E358 | 0xA0 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8003E3F8 | 0x8003E3F8 | 0xA0 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8003F5C8 | 0x8003F5C8 | 0xA0 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80044338 | 0x80044338 | 0xA0 | round-limit | search (unmeasured) | now |
| main | func_8004B1A8 | 0x8004B1A8 | 0xA0 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003C498 | 0x8003C498 | 0x9C | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_80048280 | 0x80048280 | 0x9C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80048938 | 0x80048938 | 0x9C | round-limit | search (unmeasured) | now |
| main | func_8004C598 | 0x8004C598 | 0x9C | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80048B18 | 0x80048B18 | 0x98 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800489D8 | 0x800489D8 | 0x94 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004B42C | 0x8004B42C | 0x90 | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800429A8 | 0x800429A8 | 0x8C | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_80042F18 | 0x80042F18 | 0x8C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004403C | 0x8004403C | 0x8C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004C098 | 0x8004C098 | 0x8C | round-limit | search (unmeasured) | now |
| main | func_8004D2D8 | 0x8004D2D8 | 0x8C | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003F3F4 | 0x8003F3F4 | 0x88 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800441C8 | 0x800441C8 | 0x88 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8004599C | 0x8004599C | 0x88 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004B890 | 0x8004B890 | 0x88 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_80047D48 | 0x80047D48 | 0x84 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800488A8 | 0x800488A8 | 0x84 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048A78 | 0x80048A78 | 0x84 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004A608 | 0x8004A608 | 0x84 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004CBC8 | 0x8004CBC8 | 0x7C | nonstandard-abi | none | its translation unit's neighbours, resolved with it; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003A1B0 | 0x8003A1B0 | 0x78 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045D44 | 0x80045D44 | 0x78 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80047A28 | 0x80047A28 | 0x78 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004CB40 | 0x8004CB40 | 0x78 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003A3E0 | 0x8003A3E0 | 0x74 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003E158 | 0x8003E158 | 0x74 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8004311C | 0x8004311C | 0x74 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045E04 | 0x80045E04 | 0x74 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_800445B8 | 0x800445B8 | 0x70 | round-limit | search (unmeasured) | now |
| main | func_80045BF8 | 0x80045BF8 | 0x70 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80046F2C | 0x80046F2C | 0x70 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C528 | 0x8004C528 | 0x70 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003EC38 | 0x8003EC38 | 0x6C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004D798 | 0x8004D798 | 0x6C | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800415A8 | 0x800415A8 | 0x68 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004D808 | 0x8004D808 | 0x68 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C6A8 | 0x8004C6A8 | 0x64 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80024920 | 0x80024920 | 0x60 | translation-differs | none | the differing form identified and reproduced by a compiler probe; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048220 | 0x80048220 | 0x60 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80048194 | 0x80048194 | 0x5C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80011998 | 0x80011998 | 0x58 | translation-differs | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8003CCA8 | 0x8003CCA8 | 0x58 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003CD08 | 0x8003CD08 | 0x58 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003CD68 | 0x8003CD68 | 0x58 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003CDD0 | 0x8003CDD0 | 0x58 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8003E55C | 0x8003E55C | 0x58 | boundary-uncertain | none | an accepted boundary operation (blocked: boundary.fragment); an accepted boundary operation for its range |
| main | func_800411E8 | 0x800411E8 | 0x58 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_800413F8 | 0x800413F8 | 0x58 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80047598 | 0x80047598 | 0x58 | draft-does-not-build | recipe-sweep (unmeasured) | now |
| main | func_800494AC | 0x800494AC | 0x58 | round-limit | search (unmeasured) | now |
| main | func_8003CC48 | 0x8003CC48 | 0x54 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003D5A8 | 0x8003D5A8 | 0x54 | round-limit | search (unmeasured) | now |
| main | func_8003EFB8 | 0x8003EFB8 | 0x54 | round-limit | search (unmeasured) | now |
| main | func_8003F260 | 0x8003F260 | 0x54 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_80041258 | 0x80041258 | 0x54 | round-limit | search (unmeasured) | now |
| main | func_80047544 | 0x80047544 | 0x54 | round-limit | search (unmeasured) | now |
| main | func_8003CAC8 | 0x8003CAC8 | 0x50 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_800475F0 | 0x800475F0 | 0x50 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80048858 | 0x80048858 | 0x50 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004B158 | 0x8004B158 | 0x50 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_8004C638 | 0x8004C638 | 0x50 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003CB18 | 0x8003CB18 | 0x4C | handwritten-assembly-unproven | search (unmeasured) | now |
| main | func_8003F2B8 | 0x8003F2B8 | 0x4C | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003FD88 | 0x8003FD88 | 0x4C | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80041618 | 0x80041618 | 0x4C | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80047170 | 0x80047170 | 0x4C | round-limit | search (unmeasured) | now |
| main | func_80039EFC | 0x80039EFC | 0x48 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003EF64 | 0x8003EF64 | 0x48 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8003F00C | 0x8003F00C | 0x48 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_80040554 | 0x80040554 | 0x48 | control-flow-differs | none | a draft with another control-flow structure; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80045DBC | 0x80045DBC | 0x48 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80041AC0 | 0x80041AC0 | 0x40 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80047CE8 | 0x80047CE8 | 0x40 | no-recipe-identified | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8004955C | 0x8004955C | 0x40 | round-limit | recipe-sweep (unmeasured) | now |
| main | func_8004C1C8 | 0x8004C1C8 | 0x40 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C348 | 0x8004C348 | 0x40 | round-limit | search (unmeasured) | now |
| main | func_80000400 | 0x80000400 | 0x3C | boot-code | none | none: kept as assembly; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80039EC0 | 0x80039EC0 | 0x3C | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_800480B4 | 0x800480B4 | 0x3C | round-limit | search (unmeasured) | now |
| main | func_800480F0 | 0x800480F0 | 0x3C | round-limit | search (unmeasured) | now |
| main | func_80048158 | 0x80048158 | 0x3C | round-limit | search (unmeasured) | now |
| main | func_80039E88 | 0x80039E88 | 0x38 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8003E318 | 0x8003E318 | 0x34 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044008 | 0x80044008 | 0x34 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044548 | 0x80044548 | 0x34 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044628 | 0x80044628 | 0x34 | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004C388 | 0x8004C388 | 0x34 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003BEF8 | 0x8003BEF8 | 0x30 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003CED8 | 0x8003CED8 | 0x30 | no-recipe-identified | recipe-sweep (unmeasured) | now |
| main | func_8003E1D8 | 0x8003E1D8 | 0x30 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003E2E8 | 0x8003E2E8 | 0x30 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80042AC8 | 0x80042AC8 | 0x30 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044250 | 0x80044250 | 0x30 | type-or-declaration | none | declarations of the types and globals it uses; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80044588 | 0x80044588 | 0x30 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80047640 | 0x80047640 | 0x30 | round-limit | search (unmeasured) | now |
| main | func_800481F0 | 0x800481F0 | 0x30 | round-limit | search (unmeasured) | now |
| main | func_8003BCA8 | 0x8003BCA8 | 0x2C | round-limit | search (unmeasured) | now |
| main | func_8003FDF8 | 0x8003FDF8 | 0x2C | round-limit | search (unmeasured) | now |
| main | func_80048088 | 0x80048088 | 0x2C | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004812C | 0x8004812C | 0x2C | far-off-draft | recipe-sweep (unmeasured) | now |
| main | func_8004831C | 0x8004831C | 0x2C | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048438 | 0x80048438 | 0x2C | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80049508 | 0x80049508 | 0x2C | no-recipe-identified | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_8004C478 | 0x8004C478 | 0x2C | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C4A8 | 0x8004C4A8 | 0x2C | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004D368 | 0x8004D368 | 0x2C | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80041B08 | 0x80041B08 | 0x28 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_800486D8 | 0x800486D8 | 0x28 | round-limit | search (unmeasured) | now |
| main | func_80049534 | 0x80049534 | 0x28 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003D4D8 | 0x8003D4D8 | 0x24 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003FB88 | 0x8003FB88 | 0x24 | round-limit | search (unmeasured); recipe-sweep (unmeasured) | now |
| main | func_80049488 | 0x80049488 | 0x24 | stack-frame-differs | none | type or structure evidence that changes its frame (a local's size); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003A93C | 0x8003A93C | 0x20 | control-flow-differs | none | a draft with another control-flow structure; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003FDD8 | 0x8003FDD8 | 0x20 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003CEC0 | 0x8003CEC0 | 0x18 | round-limit | search (unmeasured) | now |
| main | func_8004059C | 0x8004059C | 0x10 | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80048068 | 0x80048068 | 0x10 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8003BCD8 | 0x8003BCD8 | 0xC | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_80041248 | 0x80041248 | 0xC | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C4D8 | 0x8004C4D8 | 0xC | register-allocation-only | none | new context (a caller or callee becoming exact) or a register-permutation method (not in the kit); a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
| main | func_8004C4E8 | 0x8004C4E8 | 0xC | round-limit | recipe-sweep (unmeasured) | now |
| main | func_80040728 | 0x80040728 | 0x8 | boundary-uncertain | none | an accepted boundary operation (blocked: boundary.false_split); an accepted boundary operation for its range |
| main | func_8004CBB8 | 0x8004CBB8 | 0x8 | unrecognised-difference | none | a person's comparison; a caller, callee or catalogue neighbour becomes exact (new evidence marks it for the next round) |
