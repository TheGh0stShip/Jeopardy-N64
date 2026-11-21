#include "n64dk_lift.h"

extern s32 D_80058120;

s32 func_80030A48(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp4 = 0x30D40;
    sp8 = 3;
    sp0 = 0;
    for (;;) {
        if (sp0 >= 3) {
            break;
        }
        if ((*(s32 *)((sp0 * 4) + ((s32)&D_80058120))) < sp4) {
            sp4 = *(s32 *)((sp0 * 4) + ((s32)&D_80058120));
            sp8 = sp0;
        }
        sp0++;
    }
    return sp8;
}
