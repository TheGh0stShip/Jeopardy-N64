# Unresolved queue

There are no unresolved catalogued functions in the completed main program:

- 805 of 805 functions have byte-identical source;
- 805 of 805 participate in the fixed-address source relink;
- zero generated-assembly or raw-function fallbacks remain;
- zero main-image bytes are copied from the ROM at build time.

Remaining work is source-quality improvement rather than decompilation completion: recover more
original names and shared types, regroup additional per-function sources into likely original
translation units, and replace address-style identifiers where evidence supports a name. Every
such cleanup must preserve all exact-byte and SHA-1 gates.
