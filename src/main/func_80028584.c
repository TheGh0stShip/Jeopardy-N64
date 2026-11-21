#include "n64dk_lift.h"

extern s32 D_800DE598;
extern s32 D_800E90D0;
s32 func_800283D4();

void func_80028584(void) {
    s32 sp10;
    s32 sp14;

    sp10 = 0;
    sp14 = 0;
    sp10 = 0;
    for (;;) {
        if ((u32)sp10 >= (u32)D_800DE598) {
            break;
        }
        func_800283D4(((sp10 * 31) + ((s32)&D_800E90D0)), (((D_800DE598 + sp10) * 31) + ((s32)&D_800E90D0)));
        sp10++;
    }
    D_800DE598 = D_800DE598 + sp10;
}
