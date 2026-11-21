#include "n64dk_lift.h"

extern s32 D_800DFE28;
extern s32 D_800E3B38;

s32 func_80035528(s32 arg0) {
    s32 sp0;

    sp0 = 0;
    for (;;) {
        if (sp0 >= 50) {
            break;
        }
        if ((*(s32 *)((sp0 * 4) + ((s32)&D_800E3B38))) == 0) {
            (*(s32 *)((sp0 * 4) + ((s32)&D_800E3B38))) = arg0;
            return (sp0 * 80) + ((s32)&D_800DFE28);
        }
        sp0++;
    }
    return 0;
}
