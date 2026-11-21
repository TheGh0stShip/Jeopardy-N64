#include "n64dk_lift.h"

extern s32 D_80058D58;
extern s32 D_800E3B24;
extern s32 D_800E3B28;

s32 func_800295BC(void) {
    if (D_80058D58 < D_800E3B24) {
        return 0;
    }
    if (D_80058D58 > D_800E3B28) {
        return 0;
    }
    return 1;
}
