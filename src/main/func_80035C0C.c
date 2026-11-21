#include "n64dk_lift.h"

struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };

s32 func_80035C0C(s32 arg0, s32 arg1, s32 arg2) {
    for (;;) {
        if (((struct gd_7C_s32 *)arg0)->v == 0) {
            break;
        }
        arg0 = ((struct gd_7C_s32 *)arg0)->v;
        if ((((struct gd_8_s32 *)arg0)->v & arg2) == arg1) {
            return arg0;
        }
    }
    return 0;
}
