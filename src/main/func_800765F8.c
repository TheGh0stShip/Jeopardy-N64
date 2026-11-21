#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
s32 func_80076178();

s32 func_800765F8(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    if (arg0 == 0) {
        return -1;
    }
    if (((struct gd_1E8_s32 *)arg0)->v < 4) {
        func_80076178(arg0);
    }
    sp14 = ((struct gd_1E0_s32 *)arg0)->v % 8;
    if (sp14 != 0) {
        if (arg0 == 0) {
        }
        if (((struct gd_1E8_s32 *)arg0)->v < 2) {
            func_80076178(arg0);
        }
        ((struct gd_1E0_s32 *)arg0)->v += 8 - sp14;
        if ((((struct gd_1E0_s32 *)arg0)->v & 32) != 0) {
            ((struct gd_1E8_s32 *)arg0)->v--;
            ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 32;
            ((struct n64dk_p1E4_4 *)arg0)->v++;
            ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
        } else {
            ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << (8 - sp14);
        }
    }
    sp10 = 0;
    for (;;) {
        if (((struct gd_1E8_s32 *)arg0)->v <= 0) {
            break;
        }
        if (((struct gd_1E8_s32 *)arg0)->v < 4) {
            func_80076178(arg0);
        }
        if (((struct gd_1E8_s32 *)arg0)->v < 2) {
            func_80076178(arg0);
        }
        ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v + 8;
        if ((((struct gd_1E0_s32 *)arg0)->v & 32) != 0) {
            ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 32;
            ((struct n64dk_p1E4_4 *)arg0)->v++;
            ((struct gd_1E8_s32 *)arg0)->v--;
            if (((struct gd_1E0_s32 *)arg0)->v != 0) {
                ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v | ((u32)(*(s32 *)((struct gd_1E4_s32 *)arg0)->v) >> (u32)(8 - ((struct gd_1E0_s32 *)arg0)->v));
            }
            sp18 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
            ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
        } else {
            sp18 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
            ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << 8;
        }
        if (sp18 == 0) {
            if (sp10 < 2) {
                sp10++;
            }
        } else {
            if (sp18 == 1) {
                if (sp10 == 2) {
                    sp10++;
                } else {
                    sp10 = 0;
                }
            } else {
                sp10 = 0;
            }
        }
        if (sp10 == 3) {
            ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 24;
            if (((struct gd_1E0_s32 *)arg0)->v < 0) {
                ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v + 32;
                ((struct gd_1E8_s32 *)arg0)->v++;
                ((struct n64dk_p1E4_4 *)arg0)->v--;
                ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
            } else {
                ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
            }
            return 1;
        }
    }
    return -2;
}
