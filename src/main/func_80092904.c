#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
extern u64 D_80072338;
u64 func_80047D48();

s32 func_80092904(s32 arg0, ...) {
    s32 sp10;

    sp10 = (s32)func_80047D48();
    (*(s32 *)arg0) = (s32)(sp10 / D_80072338);
    sp10 = (s32)(sp10 % D_80072338);
    ((struct gd_4_s32 *)arg0)->v = (s32)(((s64)sp10 * 0xF4240) / D_80072338);
    return 0;
}
