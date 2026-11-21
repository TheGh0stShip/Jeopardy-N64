#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
extern s32 D_800E335C;
extern s32 D_800E3B30;
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_8000B348(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;
    s32 sp28;

    sp28 = *(s32 *)((struct gd_6C_s32 *)arg1)->v;
    sp18.w[1] = 1;
    sp18.w[0] = 0;
    for (;;) {
        sp10 = func_80035E48(arg1);
        if (sp10 == 0) {
            break;
        }
        switch (sp10) {
        case 8:
            D_800E3B30 = ((struct gd_8_s32 *)((struct gd_6C_s32 *)arg1)->v)->v + (((struct gd_C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v * 36);
            return sp18;
        }
    }
    ((struct gd_C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v = ((struct gd_C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v + D_800E335C;
    if (((struct gd_C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v >= ((struct gd_10_s32 *)((struct gd_6C_s32 *)arg1)->v)->v) {
        D_800E3B30 = (((struct gd_8_s32 *)((struct gd_6C_s32 *)arg1)->v)->v - 36) + (((struct gd_10_s32 *)((struct gd_6C_s32 *)arg1)->v)->v * 36);
        func_800359E8(35);
        sp18.w[1] = 0;
        sp18.w[0] = 0;
        return sp18;
    }
    D_800E3B30 = ((struct gd_8_s32 *)((struct gd_6C_s32 *)arg1)->v)->v + (((struct gd_C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v * 36);
    return sp18;
}
