#include "n64dk_lift.h"

struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_1EC_s32 { u8 pad[0x1EC]; s32 v; };
struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct gd_248_s32 { u8 pad[0x248]; s32 v; };
struct gd_250_f64 { u8 pad[0x250]; f64 v; };
struct gd_258_s32 { u8 pad[0x258]; s32 v; };
struct gd_25C_s32 { u8 pad[0x25C]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
struct n64dk_f264_s32 { u8 pad[0x264]; s32 m[1]; };
f64 func_80076E30();

void func_8007723C(s32 arg0) {
    s32 sp10;

    ((struct gd_260_s32 *)arg0)->v = ((struct gd_258_s32 *)arg0)->v = ((struct gd_25C_s32 *)arg0)->v = 0;
    sp10 = 0;
    for (;;) {
        if (sp10 >= 5) {
            break;
        }
        ((struct gd_10_s32 *)((struct n64dk_f264_s32 *)arg0)->m[sp10])->v = 0;
        sp10++;
    }
    ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E8_s32 *)arg0)->v = 0;
    ((struct gd_1E4_s32 *)arg0)->v = ((struct gd_1EC_s32 *)arg0)->v;
    ((struct gd_234_s32 *)arg0)->v = 0;
    ((struct gd_1F4_s32 *)arg0)->v = 0;
    ((struct gd_250_f64 *)arg0)->v = func_80076E30();
    ((struct gd_248_s32 *)arg0)->v = 0;
    ((struct gd_204_s32 *)arg0)->v = 0;
}
