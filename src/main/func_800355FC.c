#include "n64dk_lift.h"

extern s32 D_800E3B38;

void func_800355FC(s32 arg0) {
    s32 sp0;

    sp0 = 0;
    for (;;) {
        if (sp0 >= 50) {
            return;
        }
        if ((*(s32 *)((sp0 * 4) + ((s32)&D_800E3B38))) == arg0) {
            (*(s32 *)((sp0 * 4) + ((s32)&D_800E3B38))) = 0;
        }
        sp0++;
    }
}
