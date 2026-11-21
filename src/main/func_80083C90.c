#include "n64dk_lift.h"

struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_D0_s32 { u8 pad[0xD0]; s32 v; };
struct gd_258_s32 { u8 pad[0x258]; s32 v; };
struct gd_25C_s32 { u8 pad[0x25C]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
s32 func_8008A510();
s32 func_8008AD28();

void func_80083C90(s32 arg0, s32 arg1) {
    func_8008AD28(arg0);
    if ((((struct gd_D0_s32 *)arg0)->v == 1) || (((struct gd_D0_s32 *)arg0)->v == 2)) {
        if (((struct gd_25C_s32 *)arg0)->v == 0) {
            ((struct gd_25C_s32 *)arg0)->v = ((struct gd_260_s32 *)arg0)->v;
            ((struct gd_10_s32 *)((struct gd_25C_s32 *)arg0)->v)->v = ((struct gd_10_s32 *)((struct gd_25C_s32 *)arg0)->v)->v | 4;
        } else {
            if (((struct gd_258_s32 *)arg0)->v != 0) {
                ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v = ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v & -3;
            }
            ((struct gd_258_s32 *)arg0)->v = ((struct gd_25C_s32 *)arg0)->v;
            ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v = ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v & -5;
            ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v = ((struct gd_10_s32 *)((struct gd_258_s32 *)arg0)->v)->v | 2;
            ((struct gd_25C_s32 *)arg0)->v = ((struct gd_260_s32 *)arg0)->v;
            ((struct gd_10_s32 *)((struct gd_25C_s32 *)arg0)->v)->v = ((struct gd_10_s32 *)((struct gd_25C_s32 *)arg0)->v)->v | 4;
            ((struct gd_260_s32 *)arg0)->v = ((struct gd_258_s32 *)arg0)->v;
            func_8008A510(arg0, arg1);
        }
        return;
    }
    func_8008A510(arg0, arg1);
}
