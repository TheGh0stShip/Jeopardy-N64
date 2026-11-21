#include "n64dk_lift.h"

extern s32 D_800DEFD8;

s32 func_8003362C(s32 arg0) {
    s32 sp0;
    s32 sp4;

    sp0 = 0;
    sp4 = D_800DEFD8;
    while (((*(u8 *)(arg0 + sp0)) != 92) && ((*(u8 *)((sp0 + arg0) + 1)) != 92)) {
        (*(s8 *)(D_800DEFD8++)) = *(u8 *)((sp0++) + arg0);
    }
    (*(s8 *)(D_800DEFD8++)) = 92;
    (*(s8 *)(D_800DEFD8++)) = 92;
    return sp4;
}
