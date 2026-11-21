#include "n64dk_lift.h"


s32 func_800119F0(s32 arg0, s32 arg1) {
    u16 sp0;

    sp0 = 1;
    for (;;) {
        if ((((*(u8 *)(arg1++)) = *(u8 *)(arg0++)) & 255) == 0) {
            break;
        }
        sp0++;
    }
    return sp0;
}
