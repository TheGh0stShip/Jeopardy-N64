#include "n64dk_lift.h"

struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct n64dk_f1C_s32 { u8 pad[0x1C]; s32 m[1]; };

void func_80035C98(s32 arg0, s32 arg1) {
    if (((struct gd_18_s32 *)arg0)->v < 20) {
        ((struct n64dk_f1C_s32 *)arg0)->m[((struct gd_18_s32 *)arg0)->v] = arg1;
        ((struct gd_18_s32 *)arg0)->v++;
    }
}
