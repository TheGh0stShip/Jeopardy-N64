#include "n64dk_lift.h"

extern s32 D_80058DDC;

s32 func_800283D4(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    u8 spC;

    sp0 = 0;
    sp4 = 0;
    sp8 = 0;
    spC = 255;
    if ((*(u8 *)arg0) == 84) {
        if ((*(u8 *)(arg0 + 1)) == 72) {
            if ((*(u8 *)(arg0 + 2)) == 69) {
                if ((*(u8 *)(arg0 + 3)) == 32) {
                    sp4 = 4;
                }
            }
        }
    }
    for (;;) {
        if ((*(u8 *)(arg0 + sp4)) == 0) {
            break;
        }
        sp8 = (*(u8 *)(arg0 + sp4)) - 32;
        if ((*(s32 *)((sp8 * 4) + ((s32)&D_80058DDC))) != 0) {
            if (spC != (*(u8 *)(arg0 + sp4))) {
                (*(s8 *)((sp0++) + arg1)) = *(u8 *)(arg0 + sp4);
            }
            spC = *(u8 *)((sp4++) + arg0);
        } else {
            spC = *(u8 *)(arg0 + sp4);
            sp4++;
        }
    }
    (*(s8 *)(arg1 + sp0)) = 0;
    return sp4;
}
