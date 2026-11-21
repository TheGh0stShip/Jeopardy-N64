#include "n64dk_lift.h"

struct gd_50_s32 { u8 pad[0x50]; s32 v; };
extern s32 D_800D7D28;

s32 func_80027154(void) {
    s32 sp0;
    s32 sp4;

    sp4 = (s32)&D_800D7D28;
    sp0 = ((struct gd_50_s32 *)sp4)->v;
    for (;;) {
        if (sp0 == 0) {
            break;
        }
        sp4 = sp0;
        sp0 = ((struct gd_50_s32 *)sp4)->v;
    }
    return sp4;
}
