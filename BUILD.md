# Reproducing the Jeopardy! cartridge

## Requirements

- Python 3.11 or newer and GNU Make;
- N64 Decomp Kit with the whole-translation-unit relink support recorded in `kit/`;
- the KMC GCC 2.7.2, SGI IDO 5.x, ASN64 and GNU MIPS assembler toolchains recorded by
  `toolchain.lock.json`;
- a legally obtained USA ROM with SHA-1 `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed`.

Set `N64DK_TOOLCHAIN` (or `TOOLCHAIN_DIR`) when the toolchains are outside the kit's configured
location.

## Clean build

```sh
make extract BASEROM='/path/to/Jeopardy! (USA).z64'
make clean
make -j1
make verify
```

Extraction validates the ROM and writes only below ignored `build/`. The original ROM path can be
made unavailable after extraction. The build then compiles/assembles 805 functions, builds 179
main-image data sources, fixed-address links the main image, constructs the cartridge, and checks
three independent SHA-1 gates.

Expected result:

```text
PASS code: bb52f3b494108cbea913ae729300afbfafd3718e (0 differing bytes)
PASS main: 9866a60305c9ade6f16b29114af08638a2dacfeb (0 differing bytes)
PASS whole_rom: c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed (0 differing bytes)
```

The output ROM is `build/jeopardy.z64`. It and all extracted inputs are private build products and
must not be committed or distributed.

## Independent replay recorded here

`evidence/link/BUILD_REPORT.json` and `evidence/link/FINAL_RELINK.json` came from a clean Transfer
build after the original ROM was renamed out of reach. They record 805/805 linked functions,
179/179 linked data sources, and zero raw program bytes, holes, overlaps, unresolved symbols, or
differences.

Run `python3 tools/generate_tracker_progress.py --check` to verify that tracker manifests, source
hashes, and checked-in evidence remain synchronized.
