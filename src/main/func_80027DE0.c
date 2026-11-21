#include "n64dk_lift.h"

extern s32 D_80058858;
extern s32 D_800599E8;
extern s32 D_800E5C88;
extern s32 D_800E5CB8;

s32 func_80027DE0(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp0 = 0;
    sp4 = 0;
    if ((u32)D_80058858 < 2) {
        sp8 = *(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88));
    } else {
        sp8 = D_800E5CB8;
    }
    for (; !((*(u8 *)(sp8 + sp0)) == 13); sp0++) {
    }
    sp0 = sp0 + 2;
    while (!((*(u8 *)(sp8 + sp0)) == 13)) {
        sp0++;
    }
    sp0 = sp0 + 2;
    sp4 = 0;
    while (!(sp4 == arg1)) {
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0 = sp0 + 4;
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0 = sp0 + 2;
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0 = sp0 + 2;
        sp4++;
    }
    for (; !((*(u8 *)(sp8 + sp0)) == 13); sp0++) {
    }
    sp0 = sp0 + 4;
    return sp8 + sp0;
}
