#include "n64dk_lift.h"

struct gd_1F8_s32 { u8 pad[0x1F8]; s32 v; };
s32 func_8009178C();

void func_800906C0(s32 arg0) {
    if (((struct gd_1F8_s32 *)arg0)->v != 0) {
        func_8009178C(254, arg0);
    }
}
