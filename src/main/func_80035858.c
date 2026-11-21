#include "n64dk_lift.h"

struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_14_s32 { u8 pad[0x14]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_80001AFC;
extern s32 D_800E1008;
s32 func_80008168();
s32 func_80035698();

void func_80035858(void) {
    s32 sp10;
    s32 sp14;
    s32 pad0[2];
    s32 sp20;

    sp20 = (s32)&D_800E1008;
    for (;;) {
        if (((struct gd_7C_s32 *)sp20)->v == 0) {
            return;
        }
        sp20 = ((struct gd_7C_s32 *)sp20)->v;
        if ((*(s32 *)sp20) == 0) {
            func_80008168(((s32)&D_80001AFC));
            return;
        }
        if (((struct gd_14_s32 *)sp20)->v == 0) {
            if (((struct gd_C_s32 *)sp20)->v > 0) {
                ((struct gd_C_s32 *)sp20)->v--;
            } else {
                ((s32 (*)())(*(s32 *)sp20))(((s32)&sp10), sp20);
                switch (sp14) {
                case 0:
                    func_80035698(sp20, sp10);
                    break;
                case 1:
                    ((struct gd_C_s32 *)sp20)->v = sp10;
                    break;
                case 2:
                    ((struct gd_10_s32 *)sp20)->v = sp10;
                    ((struct gd_14_s32 *)sp20)->v = 1;
                    break;
                case 3:
                    ((struct gd_10_s32 *)sp20)->v = sp10;
                    break;
                }
            }
        }
    }
}
