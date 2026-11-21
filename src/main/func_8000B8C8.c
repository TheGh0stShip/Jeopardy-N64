#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
struct n64dk_a800504AC { s32 m0; u8 pad4[0x1C]; };
extern struct n64dk_a800504AC D_800504AC[];
extern s32 func_8000B558;
extern s32 D_800E3634;
s32 func_80035760();

struct n64dk_r12 func_8000B8C8(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;

    sp28 = *(s32 *)((struct gd_6C_s32 *)arg1)->v;
    D_800E3634++;
    if (D_800E3634 >= 19) {
        D_800E3634 = 0;
    }
    sp10.w[1] = 1;
    sp10.w[0] = 240;
    if (D_800504AC[D_800E3634].m0 != 0) {
        sp24 = func_80035760(((s32)&func_8000B558), 1);
        if (sp24 == 0) {
            return sp10;
        }
        (*(s32 *)((struct gd_6C_s32 *)sp24)->v) = *(s32 *)((struct gd_6C_s32 *)arg1)->v;
        ((struct gd_4_s32 *)((struct gd_6C_s32 *)sp24)->v)->v = 0;
        sp2C = D_800504AC[D_800E3634].m0;
        ((struct gd_8_s32 *)((struct gd_6C_s32 *)sp24)->v)->v = sp2C;
        sp10.w[0] = 0;
        sp20 = 0;
        for (;;) {
            if (((struct gd_18_s32 *)((sp20 * 28) + sp2C))->v == 0) {
                break;
            }
            sp10.w[0] = sp10.w[0] + ((struct gd_18_s32 *)(((sp20++) * 28) + sp2C))->v;
        }
    }
    return sp10;
}
