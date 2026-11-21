#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_f32 { u8 pad[0x8]; f32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_f32 { u8 pad[0xC]; f32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_f32 { u8 pad[0x10]; f32 v; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_f32 { u8 pad[0x14]; f32 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_14_s32 { u8 pad[0x14]; s32 v; };
struct gd_18_f32 { u8 pad[0x18]; f32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_1C_f32 { u8 pad[0x1C]; f32 v; };
struct gd_20_f32 { u8 pad[0x20]; f32 v; };
struct gd_24_f32 { u8 pad[0x24]; f32 v; };
struct gd_28_f32 { u8 pad[0x28]; f32 v; };
struct gd_2C_f32 { u8 pad[0x2C]; f32 v; };
struct gd_30_f32 { u8 pad[0x30]; f32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
extern s32 func_8000B348;
s32 func_80035760();

struct n64dk_r12 func_8000B558(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;

    sp24 = *(s32 *)((struct gd_6C_s32 *)arg1)->v;
    sp28 = ((struct gd_8_s32 *)((struct gd_6C_s32 *)arg1)->v)->v + (((struct gd_4_s32 *)((struct gd_6C_s32 *)arg1)->v)->v * 36);
    if (((struct gd_18_s32 *)sp28)->v != 0) {
        sp10.w[1] = 1;
        sp10.w[0] = ((struct gd_18_s32 *)sp28)->v;
        sp20 = func_80035760(((s32)&func_8000B348), 1);
        if (sp20 == 0) {
            return sp10;
        }
        (*(s32 *)((struct gd_6C_s32 *)sp20)->v) = *(s32 *)((struct gd_6C_s32 *)arg1)->v;
        ((struct gd_8_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (f32)(((*(s32 *)sp28) - ((struct gd_10_s16 *)sp24)->v) / ((struct gd_18_s32 *)sp28)->v);
        ((struct gd_C_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (f32)((((struct gd_4_s32 *)sp28)->v - ((struct gd_12_s16 *)sp24)->v) / ((struct gd_18_s32 *)sp28)->v);
        ((struct gd_10_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (f32)((((struct gd_8_s32 *)sp28)->v - ((struct gd_14_s16 *)sp24)->v) / ((struct gd_18_s32 *)sp28)->v);
        ((struct gd_14_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (((f32)((struct gd_C_s32 *)sp28)->v) - ((struct gd_28_f32 *)sp24)->v) / ((f32)((struct gd_18_s32 *)sp28)->v);
        ((struct gd_18_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (((f32)((struct gd_10_s32 *)sp28)->v) - ((struct gd_2C_f32 *)sp24)->v) / ((f32)((struct gd_18_s32 *)sp28)->v);
        ((struct gd_1C_f32 *)((struct gd_6C_s32 *)sp20)->v)->v = (((f32)((struct gd_14_s32 *)sp28)->v) - ((struct gd_30_f32 *)sp24)->v) / ((f32)((struct gd_18_s32 *)sp28)->v);
        ((struct gd_4_s32 *)((struct gd_6C_s32 *)sp20)->v)->v = ((struct gd_18_s32 *)sp28)->v;
        ((struct gd_1C_f32 *)sp24)->v = (f32)((struct gd_10_s16 *)sp24)->v;
        ((struct gd_20_f32 *)sp24)->v = (f32)((struct gd_12_s16 *)sp24)->v;
        ((struct gd_24_f32 *)sp24)->v = (f32)((struct gd_14_s16 *)sp24)->v;
        ((struct gd_4_s32 *)((struct gd_6C_s32 *)arg1)->v)->v++;
    } else {
        sp10.w[1] = 0;
        sp10.w[0] = 0;
    }
    return sp10;
}
