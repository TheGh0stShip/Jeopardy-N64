# Provenance

- 410 strict C functions (`export/src/main/`): written by N64 Decomp Kit from this ROM (its GCC -O0 translator and
  drafts, with search). 334 of them (244,156 bytes) are -O0 translations; 76 are -O2/-O1/-O3 KMC or IDO functions.
- 33 donor functions (`export/donors/main/`, 9,652 bytes): C from the public Wheel of Fortune (N64) repository
  (same developer, GameTek), tree at commit `54c5cbd` ("Clean machine-translated Wheel of Fortune sources"), taken
  by `n64dk source-donor` and rebuilt for this ROM; each has a strict receipt (`export/receipts/donors/`). The
  bundled donor files are self-contained (preprocessed; no `#include`). One of their originals
  (WoF `func_8003FB08.c`) includes `types.h`, which the repository did not ship at `54c5cbd`; the transplant
  used a stand-in with the standard typedefs. The repository has since added `src/main/types.h` (commit
  `6bbdff2`) with the same typedefs.
- SDK headers used only while measuring the donor tree: decompals/ultralib at `e24c836` (include/, include/PR,
  include/compiler/gcc, src/audio). None of them is part of any matched source here.
- Toolchains are not included: KMC GCC 2.7.2 with the asn64 assembler, IDO 5.3 (the kit's lanes).
