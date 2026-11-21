#include "n64dk_lift.h"

struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_80001A7C;
extern s32 D_800E1008;
s32 func_80008168();

s32 func_80035370(s32 arg0) {
    s32 sp10;
    s32 sp14;

    sp14 = (s32)&D_800E1008;
    sp10 = ((struct gd_7C_s32 *)sp14)->v;
    for (;;) {
        if (sp10 == 0) {
            break;
        }
        if (sp10 == arg0) {
            return sp14;
        }
        sp14 = sp10;
        sp10 = ((struct gd_7C_s32 *)sp14)->v;
    }
    func_80008168(((s32)&D_80001A7C));
    return 0;
}
