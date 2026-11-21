#include "n64dk_lift.h"


s32 func_8002865C(s32 arg0) {
    s32 sp0;
    s32 sp4;

    sp0 = 0;
    sp4 = 0;
    while (((*(u8 *)(arg0 + sp4)) != 13) && ((*(u8 *)(arg0 + sp4)) != 126)) {
        if ((*(u8 *)((sp4++) + arg0)) == 32) {
            sp0++;
        }
    }
    return sp0 + 1;
}
