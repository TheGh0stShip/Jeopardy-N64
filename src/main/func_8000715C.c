#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
extern s32 D_8004DFC0;
extern s32 D_8004DFC4;
extern s32 D_800E3A40;
extern s32 D_800E3AFC;
extern s32 D_800E3B00;
extern s32 D_800E5CC8;
s32 func_8003D4A8();
s32 func_8003D4D8();
s32 func_80043338();
s32 func_800485C8();

s32 func_8000715C(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;

    sp34 = 0;
    sp30 = D_800E3AFC;
    sp28 = arg0 + arg1;
    for (;;) {
        if (sp30 == 0) {
            break;
        }
        sp2C = ((struct gd_8_s32 *)sp30)->v + 2048;
        if ((u32)((struct gd_8_s32 *)sp30)->v > (u32)arg0) {
            break;
        } else {
            if (sp28 <= sp2C) {
                ((struct gd_C_s32 *)sp30)->v = D_8004DFC0;
                sp20 = (((struct gd_10_s32 *)sp30)->v + arg0) - ((struct gd_8_s32 *)sp30)->v;
                return func_80043338(sp20);
            }
        }
        sp34 = sp30;
        sp30 = *(s32 *)sp30;
    }
    sp30 = D_800E3B00;
    D_800E3B00 = *(s32 *)sp30;
    func_8003D4A8(sp30);
    if (sp34 != 0) {
        func_8003D4D8(sp30, sp34);
    } else {
        if (D_800E3AFC != 0) {
            sp34 = D_800E3AFC;
            D_800E3AFC = sp30;
            (*(s32 *)sp30) = sp34;
            ((struct gd_4_s32 *)sp30)->v = 0;
            ((struct gd_4_s32 *)sp34)->v = sp30;
        } else {
            D_800E3AFC = sp30;
            (*(s32 *)sp30) = 0;
            ((struct gd_4_s32 *)sp30)->v = 0;
        }
    }
    sp20 = ((struct gd_10_s32 *)sp30)->v;
    sp24 = arg0 & 1;
    arg0 = arg0 - sp24;
    ((struct gd_8_s32 *)sp30)->v = arg0;
    ((struct gd_C_s32 *)sp30)->v = D_8004DFC0;
    func_800485C8((((D_8004DFC4++) * 24) + ((s32)&D_800E5CC8)), 0, 0, arg0, sp20, 2048, ((s32)&D_800E3A40));
    return func_80043338(sp20) + sp24;
}
