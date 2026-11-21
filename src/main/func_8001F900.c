#include "n64dk_lift.h"


s32 func_8001F900(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp0 = 0;
    sp4 = 0;
    sp8 = arg0;
    while (!((*(u8 *)(sp8 + sp0)) == 13)) {
        sp0++;
    }
    sp0++;
    while (!((*(u8 *)(sp8 + sp0)) == 13)) {
        sp0++;
    }
    sp0++;
    sp4 = 0;
    while (!(sp4 == arg1)) {
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0++;
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0++;
        while (!((*(u8 *)(sp8 + sp0)) == 13)) {
            sp0++;
        }
        sp0++;
        sp4++;
    }
    return (sp8 + sp0) + 1;
}
