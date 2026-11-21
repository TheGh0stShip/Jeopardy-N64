#include "n64dk_lift.h"

extern s32 D_800E0FFC;
extern s32 D_800E366C;

s32 func_8000766C(s32 arg0) {
    s32 sp0;

    if ((u32)arg0 > (u32)D_800E366C) {
        return 0;
    }
    sp0 = D_800E0FFC;
    D_800E0FFC = D_800E0FFC + arg0;
    D_800E366C = D_800E366C - arg0;
    return sp0;
}
