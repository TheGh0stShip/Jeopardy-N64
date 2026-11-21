#include "n64dk_lift.h"

s32 func_80092468();

s32 func_80091284(s32 arg0) {
L0: ;
    switch (func_80092468(arg0)) {
    case 0:
        goto L10;
    case -1:
        goto L40;
    default:
        goto L0;
    }
L10: ;
    switch (func_80092468(arg0)) {
    case 0:
        goto L20;
    case -1:
        goto L40;
    default:
        goto L0;
    }
L20: ;
    switch (func_80092468(arg0)) {
    case 1:
        goto L35;
    case 0:
        goto L20;
    case -1:
        goto L40;
    default:
        goto L0;
    }
L35: ;
    return func_80092468(arg0) + 256;
L40: ;
    return -1;
}
