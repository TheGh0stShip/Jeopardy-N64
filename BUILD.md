# Reproducing the Jeopardy! cartridge

The project has two separate progress claims:

- 64.53% of executable bytes have decompiled or original hand-written source accepted by the
  strict matching tracker; and
- 100% of the catalogued executable image participates in the linked cartridge build. Functions
  not yet decompiled remain checked-in generated assembly and receive no decompilation credit.

The build never ships ROM data. `make extract` validates and copies a legally obtained USA ROM
into the gitignored `extracted/` directory. The subsequent build compiles or assembles every one
of the 805 catalogued executable units. N64 Decomp Kit fills only non-executable/data gaps from
the private extraction input, links the main image at its retail addresses, and constructs the
cartridge. The gate rejects any `raw-unit` executable coverage.

## Requirements

- N64 Decomp Kit with `relink-cartridge` on `PATH` (or set `N64DK`);
- the KMC GCC 2.7.2, IDO 5.3 and MIPS binutils toolchains used by N64DK (set
  `TOOLCHAIN_DIR` if they are not in `~/.cache/n64dk-lab/toolroot`);
- Python 3 and GNU Make;
- a legally obtained `Jeopardy! (USA).z64` with SHA-1
  `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed`.

## Build

```sh
make extract ROM='/path/to/Jeopardy! (USA).z64'
make clean
make -j1
make verify
```

After `make extract`, the original ROM path is no longer used. `make clean` intentionally keeps
the private extraction; `make distclean` removes it. Successful verification reports:

```text
linked 805/805 executable units from source
raw executable units: 0
cartridge SHA-1: c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed
```

The output is `build/jeopardy.z64`. It and `extracted/` are private build products and must never
be committed or distributed.

## Link fallbacks

Forty-six functions use `asm/link_fallback/` in the unified link. Their separately verified C
or mnemonic assembly remains published in the normal source trees and keeps its existing tracker
classification. These fixed-word assembly files exist because standalone donor names, section
ownership, or old-assembler relocation behavior does not survive a modern unified GNU link.
They are explicit and auditable; they are not counted as additional decompiled C.
