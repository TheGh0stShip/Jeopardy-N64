# Replaying the hand-off

Needs: N64 Decomp Kit with `kit/JEOPARDY_KIT_ON_FOLLOWUP.patch` (or authoritative 68365af: only `verify-export` is
used), the KMC GCC 2.7.2 / IDO 5.3 toolchains, and your own `Jeopardy! (USA).z64` (SHA-1 c5bcf3ef...).

```sh
n64dk decompile-init 'Jeopardy! (USA).z64' --out proj
patch -p1 -d proj < catalogue/catalogue_corrections.patch     # the 3 boundary corrections
n64dk --format json verify-export --project proj export        # expect ok: 480 replayed, 0 rejected
```
`verify-export` rebuilds every C and assembly result from its receipt and the manifest row, and checks bytes and
relocations against the ROM. Done here on a second machine (Transfer): `replay/verify4.json`.

How the receipts were made (from the run, on the original project with the corrected catalogue):
`n64dk issue-receipts --project <project with corrections> --export export <run>` (`replay/receipts_c.json`).
