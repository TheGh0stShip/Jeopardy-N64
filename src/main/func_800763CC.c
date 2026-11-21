#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
s32 func_80076178();
s32 func_80076260();
s32 func_800925B8();
s32 func_80092600();

s32 func_800763CC(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;

    sp10 = 1024;
    sp18 = func_800925B8(sp10);
    sp14 = 0;
    for (;;) {
        if (func_80076260(24, 1, arg0) != 0) {
            break;
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
            sp1C = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
            ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
        } else {
            sp1C = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
            ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << 8;
        }
        (*(s8 *)(sp18 + sp14)) = sp1C;
        sp14++;
        if (sp14 == sp10) {
            sp10 = sp10 + 1024;
            sp18 = func_80092600(sp18, sp10);
        }
    }
    sp18 = func_80092600(sp18, sp14);
    return sp18;
}
