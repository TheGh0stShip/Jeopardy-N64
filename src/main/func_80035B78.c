#include "n64dk_lift.h"

struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_800E1008;

s32 func_80035B78(s32 arg0, s32 arg1) {
    s32 sp0;

    sp0 = (s32)&D_800E1008;
    for (;;) {
        if (((struct gd_7C_s32 *)sp0)->v == 0) {
            break;
        }
        sp0 = ((struct gd_7C_s32 *)sp0)->v;
        if ((((struct gd_8_s32 *)sp0)->v & arg1) == arg0) {
            return sp0;
        }
    }
    return 0;
}
