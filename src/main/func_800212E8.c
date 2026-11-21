#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern struct n64dk_e8 *D_800E0F4C;

void func_800212E8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp0;
    s32 sp4;

    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = ((((((arg0 + arg2) - 1) << 2) & 4095) << 12) | 0xE4000000) | ((((arg1 + arg3) - 1) << 2) & 4095);
    ((struct gd_4_s32 *)sp0)->v = (((arg0 << 2) & 4095) << 12) | ((arg1 << 2) & 4095);
    sp4 = (s32)D_800E0F4C++;
    (*(s32 *)sp4) = 0xB4000000;
    ((struct gd_4_s32 *)sp4)->v = 0;
    sp4 = (s32)D_800E0F4C++;
    (*(s32 *)sp4) = 0xB3000000;
    ((struct gd_4_s32 *)sp4)->v = 0x10000400;
    sp4 = (s32)D_800E0F4C++;
    (*(s32 *)sp4) = 0xE7000000;
    ((struct gd_4_s32 *)sp4)->v = 0;
}
