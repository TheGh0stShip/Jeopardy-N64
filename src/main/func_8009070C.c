#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_1EC_s32 { u8 pad[0x1EC]; s32 v; };
struct gd_1F8_s32 { u8 pad[0x1F8]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_20C_s32 { u8 pad[0x20C]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct gd_248_s32 { u8 pad[0x248]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
extern s32 D_80075EFC;
s32 func_80008168();
s32 func_80076178();
s32 func_800765F8();
s32 func_800906C0();
s32 func_80090DE8();
s32 func_80092468();
s32 func_80092544();
s32 func_8009264C();

void func_8009070C(s32 arg0) {
    s32 sp10;
    s32 sp14;

    if (((struct gd_20C_s32 *)arg0)->v < 0) {
        return;
    }
    sp10 = func_80092544(((struct gd_208_s32 *)arg0)->v, ((struct gd_20C_s32 *)arg0)->v, 0);
    if (sp10 != 0) {
        func_80008168(((s32)&D_80075EFC));
    }
    ((struct gd_20C_s32 *)arg0)->v = -((struct gd_20C_s32 *)arg0)->v;
    ((struct gd_248_s32 *)arg0)->v = 0;
    ((struct gd_1E4_s32 *)arg0)->v = ((struct gd_1EC_s32 *)arg0)->v;
    ((struct gd_1E8_s32 *)arg0)->v = 0;
    ((struct gd_1E0_s32 *)arg0)->v = 0;
L31: ;
L32: ;
    switch (func_80092468(((struct gd_208_s32 *)arg0)->v)) {
    case 0:
        goto L43;
    case -1:
        goto L178;
    default:
        goto L32;
    }
L43: ;
    switch (func_80092468(((struct gd_208_s32 *)arg0)->v)) {
    case 0:
        goto L54;
    case -1:
        goto L178;
    default:
        goto L32;
    }
L54: ;
    switch (func_80092468(((struct gd_208_s32 *)arg0)->v)) {
    case 1:
        goto L70;
    case 0:
        goto L54;
    case -1:
        goto L178;
    default:
        goto L32;
    }
L70: ;
    sp14 = func_80092468(((struct gd_208_s32 *)arg0)->v) + 256;
    if (((struct gd_1F8_s32 *)arg0)->v != 0) {
        func_800906C0(arg0);
        if ((sp14 & -256) == 256) {
            if ((sp14 & 255) >= 188) {
                func_80090DE8(arg0, sp14);
                for (;;) {
                    goto L94;
                    break;
L94: ;
                    func_800765F8(arg0);
                    if (((struct gd_1E8_s32 *)arg0)->v < 2) {
                        func_80076178(arg0);
                    }
                    if (((struct gd_1E0_s32 *)arg0)->v != 0) {
                        sp14 = ((struct gd_234_s32 *)arg0)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg0)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg0)->v));
                    } else {
                        sp14 = ((struct gd_234_s32 *)arg0)->v;
                    }
                    if ((sp14 == 435) || (sp14 == 440)) {
                        return;
                    }
                    if (arg0 == 0) {
                    }
                    if (((struct gd_1E8_s32 *)arg0)->v < 2) {
                        func_80076178(arg0);
                    }
                    ((struct n64dk_p1E4_4 *)arg0)->v++;
                    ((struct gd_1E8_s32 *)arg0)->v--;
                    ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
                }
            }
        }
    } else {
        if ((sp14 == 435) || (sp14 == 440)) {
            (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) = sp14;
            ((struct gd_1E8_s32 *)arg0)->v = 1;
            return;
        }
    }
    goto L31;
L178: ;
    func_8009264C(1);
}
