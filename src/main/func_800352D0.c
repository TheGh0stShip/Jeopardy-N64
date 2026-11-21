#include "n64dk_lift.h"

struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_80001A70;
extern s32 D_800DE5D8;
extern s32 D_800E1008;
s32 func_80007F38();
s32 func_800494AC();

void func_800352D0(void) {
    s32 sp10;
    s32 sp14;

    sp14 = (s32)&D_800E1008;
    sp10 = ((struct gd_7C_s32 *)sp14)->v;
    for (;;) {
        if (sp10 == 0) {
            return;
        }
        func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001A70), (*(s32 *)sp10));
        func_80007F38(((s32)&D_800DE5D8));
        sp14 = sp10;
        sp10 = ((struct gd_7C_s32 *)sp14)->v;
    }
}
