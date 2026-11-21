#include "n64dk_lift.h"

extern s32 D_800D7674;

s32 func_8001FB04(s32 arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp0 = 0;
    sp4 = 0;
    sp8 = D_800D7674;
    while (!(sp0 == arg0)) {
        while (!((*(u8 *)(sp8 + sp4)) == 92)) {
            sp4++;
        }
        if ((*(u8 *)((++sp4) + sp8)) == 92) {
            sp0++;
            sp4 = sp4 + 3;
        }
    }
    return (sp8 + sp4) + 2;
}
