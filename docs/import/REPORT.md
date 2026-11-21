# Jeopardy! (N64, USA): report

> Import note: this is the historical Round 12 hand-off report. The public repository has
> since imported the bundle and mechanically centralized its repeated lift prelude. See
> [`../source-normalization.md`](../source-normalization.md) and the repository README for
> the current published state.

## Result (one unattended `decompile-run` with the Wheel of Fortune repository as donor)

805 catalogued functions, 411,016 bytes of code.

| Class | Functions | Bytes | Share of bytes | Credit |
|---|---:|---:|---:|---|
| Strict plain C (kit-written, `export/src/main/`) | 410 | 249,228 | 60.64% | yes |
| Donor C from Wheel of Fortune (`export/donors/`) | 33 | 9,652 | 2.35% | C, separate row |
| **All C** | **443** | **258,880** | **62.99%** | |
| Hand-written assembly (`export/asm/`) | 37 | 6,352 | 1.55% | not C |
| Awaiting symbols (byte-identical, undeclared data address) | 1 | 328 | 0.08% | no |
| Not decompiled (`export/asm_not_decompiled/`) | 324 | 145,456 | 35.39% | no |

There is no Jeopardy! repository yet, so everything here is new against any base; no row duplicates another.

Before this work the same title scored 267 strict functions / 11.9% of bytes (blind run of 2026-11-18). Most of
the gain is the kit's improved GCC -O0 translator (built during the Wheel of Fortune campaign): 334 of the 410
are -O0 translations. The Wheel of Fortune transplant itself gave the 33 donor functions.

## What "strict" means here
Each of the 410 + 33 compiles from its own text with the recorded recipe to the function's exact bytes, with
every relocation target declared. No source contains inline assembly, `register ... asm`, `#pragma`, or `.incbin`
(scanned: 0 hits in 439 files). Recipes are the title's own: kmc+asn64 / kmc+builtin at -O0..-O3, IDO 5.3 -O2 for
SDK units; no normaliser flags.

Source style: all 410 kit-written files start with the kit's self-contained prelude (typedefs and macros, so a
file needs no header). 71 of them use the prelude's `M2C_UNK` (an `s32` typedef) and `M2C_FIELD` (a struct-offset
access macro). Both are ordinary C. None uses the placeholders for instructions the decompiler could not express
(`M2C_ERROR`, `m2c_unhandled`): 0 uses. Renaming, structs and prelude removal (like the WoF cleanup pass) are
not done.

## Proof and replay (on a second machine, Transfer)
- Receipts: `issue-receipts` issued 447 (410 exact, 37 assembly; 445 with strict proof) + 33 donor (33 exact,
  strict); 0 refused (`replay/receipts_c.json`).
- `verify-export` against a project made fresh from the ROM with `decompile-init`, plus only the 3 catalogue
  corrections below: **ok, 480 of 480 replayed, 0 rejected, 0 missing** (`replay/verify4.json`). Notice only:
  "the object file differs outside its loaded sections (debug or path records)" on 443.
- Without the corrections the same check replays 479 of 480 (`replay/verify2.json`): func_80016468 needs its
  corrected boundary.

## Catalogue corrections (3, applied; `catalogue/catalogue_corrections.patch`)
| Correction | Evidence (from `catalogue/boundary_operations.json`) |
|---|---|
| merge func_80016468 (0x8) + func_80016470 (0xD8) -> func_80016468, 0xE0 | 0x80016468 is address-taken at 0x800179A8; 0x80016470 has no call or pointer and reads $30 before writing it |
| merge func_8003BCA8 (0x8) + func_8003BCB0 (0x24) -> func_8003BCA8, 0x2C | op0006 |
| split func_80040728 (0x6B4) -> func_80040728 (0x8) + func_80040738 (0x6A4) | op0061 |
Function count 806 -> 805. The other 159 operations (trailing-padding shrinks, retypes) stay proposals: not applied.

## Not done (honest list)
- 324 functions (145,456 bytes) not decompiled. Reasons (export/UNRESOLVED.md): far-off draft 97, translation
  differs 53, translator declined 21, round limit 42, register allocation only 13, needs translation unit 11, ...
- No whole-ROM build: there is no project that links these sources and data into a cartridge with the ROM's SHA-1
  yet (the Elmo projects are the model). Data and assets are not decompiled.
- Naming and types: functions keep `func_<address>` names.

## Kit changes (`kit/JEOPARDY_KIT_ON_FOLLOWUP.patch`)
Diff from lab 1079f30 (= Round 12 + FOLLOWUP). Applies cleanly to authoritative `68365af` on its own (checked);
it does not need the FOLLOWUP patch.
1. `source-donor --include DIR`: header directories outside the donor tree (a per-function tree that includes
   SDK headers it does not ship). Wheel of Fortune units that compiled: 470 -> 702.
2. Agent tools: the default recipe follows the survey's per-function `# O0` kind (440 of Jeopardy!'s functions);
   it was the title's -O2 recipe.
3. Agent tools open a `decompile-init` project directly (image mapping from survey/layout.json, symbols from [run]).
4. `[agent.build_host]`: every agent-tools build can run on another machine through that machine's job runner;
   verdicts are still reached locally from the object bytes. Unit-tested; not yet used for a real stage run.
5. Merged model-stage fixes from the Madden work (seed near misses, true boundaries, lock per tool call, judging
   final.c under the agent's recipes, nested inline asm counted as assisted).
Tests: on `68365af` + this patch the full suite runs 2,312 tests with 1 failure,
`test_redraft_debug.GccFormsTest.test_forms_established_on_a_title_come_back_byte_identical`, which fails the same
way on `68365af` without the patch (in this lab's toolchain); it is not caused by the patch. CLI reference
regenerated.

## Kit defects found (not fixed)
- `issue-receipts` issues against the project's catalogue, not the run's applied boundary corrections: the receipt
  for func_80016468 recorded 0x8 bytes while the export used 0xE0, so `verify-export` rejected it under either
  catalogue. Worked around by issuing with the corrected catalogue (`replay/REPLAY.md`).
- A `decompile-init` project keeps `baserom.z64` as a symlink to the ROM's absolute path; moved to another machine
  it breaks (every receipt refused: "configured image is missing").
