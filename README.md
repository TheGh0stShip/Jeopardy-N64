# Jeopardy! (Nintendo 64) matching decompilation

Matching decompilation of the USA Nintendo 64 release of **Jeopardy!**. The goal is a conventional, readable source project that rebuilds the exact retail ROM—not merely code that behaves similarly.

> **Status:** project infrastructure and a preliminary executable catalogue are established. Verified matching sources are being prepared and are not credited until their compiler output has been checked against the target bytes.

| Target | Value |
|---|---|
| Region / revision | USA, revision 0 |
| Internal game code | `NJOE` |
| ROM size | 4,194,304 bytes |
| ROM SHA-1 | `c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed` |
| ROM CRC | `69256460 B9A3F586` |
| CIC | 6102 |
| Preliminary catalogue | 814 function candidates / 411,940 code bytes |

[ByteMatch project](https://bytematch.dev/TheGh0stShip/Jeopardy-N64)

[![Matching C bytes](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=matched_code_percent&label=Matching%20C%20bytes)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)
[![Fully linked source](https://bytematch.dev/TheGh0stShip/Jeopardy-N64.svg?version=usa-catalogued&category=catalogued-code&measure=complete_code_percent&label=Fully%20linked%20source)](https://bytematch.dev/TheGh0stShip/Jeopardy-N64/usa-catalogued)

## Verification policy

- C receives matching credit only when rebuilt with the identified original compiler recipe and compared byte-for-byte with its owned ROM range.
- Assembly, compiler runtime, and SDK assembly remain identified separately; they do not inflate the matching-C percentage.
- A function is “fully linked” only after its published source participates in a pinned image/relink verification.
- Compatibility shims that silently change MIPS behavior, raw unverified m2c output, and masked-address comparisons do not receive strict credit.
- The complete-ROM goal is a build whose SHA-1 is exactly the target above, with any extracted assets and preserved inputs disclosed.

See [the verification contract](docs/verification.md) for the evidence required when importing results.

## Repository layout

- `config/functions.toml` — preliminary function boundaries recovered from the ROM.
- `progress-inventory.tsv` — tracker denominator and per-function disposition.
- `MATCHED.tsv` — strictly verified matching-C rows; initially empty.
- `src/main/` — published matching sources as they are accepted.
- `tools/generate_tracker_progress.py` — validates manifests and emits DecompHub/ByteMatch reports.
- `tools/verify_rom.py` — checks a user-supplied ROM without storing it here.

## ROM setup

Supply your own legally obtained USA ROM; ROM data is not included:

```sh
python3 tools/verify_rom.py '/path/to/Jeopardy! (USA).z64'
```

Build instructions and original compiler-toolchain setup will be added with the first reproducible source import. Until then, the tracker is an honest zero-credit baseline rather than a claim that experimental drafts are finished decompilation work.

