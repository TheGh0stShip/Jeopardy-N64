#include "n64dk_lift.h"


s32 func_8002E780(s32 arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp0 = 0;
    sp4 = 1;
    sp8 = 0;
    for (;;) {
        if ((*(u8 *)(arg0 + sp0)) == 95) {
            break;
        }
        sp0++;
    }
    sp0--;
    for (;;) {
        if (sp0 < 0) {
            break;
        }
        sp8 = sp8 + (((*(u8 *)(arg0 + sp0)) - 48) * sp4);
        sp4 = sp4 * 10;
        sp0--;
    }
    return sp8;
}
