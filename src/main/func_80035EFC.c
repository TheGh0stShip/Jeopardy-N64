#include "n64dk_lift.h"

struct gd_18_s32 { u8 pad[0x18]; s32 v; };
extern s32 D_80001BBC;
s32 func_80008168();

void func_80035EFC(s32 arg0) {
    if (arg0 == 0) {
        func_80008168(((s32)&D_80001BBC));
    }
    ((struct gd_18_s32 *)arg0)->v = 0;
}
