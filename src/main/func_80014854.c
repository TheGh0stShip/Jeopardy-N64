#include "n64dk_lift.h"

extern s32 D_80050FD4;

s32 func_80014854(u16 arg0) {
    u16 sp2;
    u16 sp4;
    s32 sp8;
    s32 spC;

    sp2 = (u32)arg0 >> 9;
    sp4 = arg0 & 511;
    sp8 = *(s32 *)((sp2 * 4) + ((s32)&D_80050FD4));
    spC = *(s32 *)((sp4 * 4) + sp8);
    return spC;
}
