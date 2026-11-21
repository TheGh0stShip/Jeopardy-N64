#include "n64dk_lift.h"

struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct n64dk_f1C_s32 { u8 pad[0x1C]; s32 m[1]; };
extern s32 D_80001BA0;
s32 func_80008168();

s32 func_80035E48(s32 arg0) {
    if (arg0 == 0) {
        func_80008168(((s32)&D_80001BA0));
        return 0;
    }
    if (((struct gd_18_s32 *)arg0)->v != 0) {
        ((struct gd_18_s32 *)arg0)->v--;
        return ((struct n64dk_f1C_s32 *)arg0)->m[((struct gd_18_s32 *)arg0)->v];
    }
    return 0;
}
