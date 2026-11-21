#include "n64dk_lift.h"

struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_800E1008;

s32 func_8003525C(void) {
    s32 sp0;
    s32 sp4;

    sp4 = (s32)&D_800E1008;
    sp0 = ((struct gd_7C_s32 *)sp4)->v;
    for (;;) {
        if (sp0 == 0) {
            break;
        }
        sp4 = sp0;
        sp0 = ((struct gd_7C_s32 *)sp4)->v;
    }
    return sp4;
}
