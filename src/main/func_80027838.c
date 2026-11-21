#include "n64dk_lift.h"

extern s32 D_800DF030;

s32 func_80027838(s32 arg0) {
    s32 sp0;

    sp0 = 0;
    for (;;) {
        if ((*(u8 *)(sp0 + ((s32)&D_800DF030))) != (*(u8 *)(arg0 + sp0))) {
            break;
        }
        sp0++;
    }
    return sp0;
}
