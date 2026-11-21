#include "n64dk_lift.h"

struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_14_s32 { u8 pad[0x14]; s32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
struct n64dk_f1C_s32 { u8 pad[0x1C]; s32 m[1]; };
extern s32 D_80001B20;
extern s32 D_80001B3C;
extern s32 D_80059DC4;
extern s32 D_800DE5D8;
extern s32 D_800E1008;
s32 func_80007F38();
s32 func_80008168();
s32 func_800494AC();

void func_800359E8(s32 arg0) {
    s32 pad0[4];
    s32 sp20;

    if (D_80059DC4 == 1) {
        return;
    }
    D_80059DC4 = 1;
    if ((arg0 & 0xFFFF) >= 52) {
        func_80008168(((s32)&D_80001B20));
        return;
    }
    sp20 = (s32)&D_800E1008;
    for (;;) {
        if (((struct gd_7C_s32 *)sp20)->v == 0) {
            break;
        }
        sp20 = ((struct gd_7C_s32 *)sp20)->v;
        if ((((struct gd_10_s32 *)sp20)->v == (arg0 & 0xFFFF)) || (((struct gd_10_s32 *)sp20)->v == -1)) {
            ((struct gd_14_s32 *)sp20)->v = 0;
            ((struct gd_C_s32 *)sp20)->v = 0;
            if (((struct gd_18_s32 *)sp20)->v < 20) {
                ((struct n64dk_f1C_s32 *)sp20)->m[((struct gd_18_s32 *)sp20)->v] = arg0;
                ((struct gd_18_s32 *)sp20)->v++;
            } else {
                func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001B3C), (*(s32 *)sp20));
                func_80007F38(((s32)&D_800DE5D8));
            }
        }
    }
    D_80059DC4 = 0;
}
