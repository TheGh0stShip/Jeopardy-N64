# Project layout

This is the completed fixed-layout source build for Jeopardy! USA. It contains no ROM, compiler
binary, extracted asset, or generated cartridge.

Every one of the 805 catalogued functions has a provenance record and checked-in source. Some
original translation units contain multiple functions because compiling them together is required
to reproduce the retail object layout (notably `vimgr.c`). `manifests/`, the provenance records,
and `toolchain.lock.json` are the authoritative build recipes.

The main image's non-function bytes are also source-owned: 179 files under `src/data/` supply
typed C objects, symbolic data assembly, RSP microcode, padding, and placement-sensitive tables.
No byte of the main image is copied from the ROM during `make`.

Header, IPL3 and assets outside the main image are extracted privately by `make extract`; this
preserves a legal, reproducible build without distributing copyrighted ROM content.
