#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_240_s32 { u8 pad[0x240]; s32 v; };
s32 func_800925B8();

s32 func_80077328(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;

    sp14 = ((struct gd_240_s32 *)arg0)->v;
    sp18 = ((struct gd_C_s32 *)arg0)->v * 16;
    sp1C = ((struct gd_8_s32 *)arg0)->v * 16;
    sp10 = func_800925B8(24);
    sp20 = 4;
    if (sp20 == 0) {
        sp20 = 1;
    }
    if (sp20 == 3) {
        sp20 = 4;
    }
    sp24 = 1;
    ((struct gd_C_s32 *)sp10)->v = func_800925B8(((((sp18 * sp1C) * sp20) * sp24) * sp24));
    (*(s32 *)sp10) = func_800925B8((sp18 * sp1C));
    ((struct gd_4_s32 *)sp10)->v = func_800925B8(((u32)(sp18 * sp1C) >> 2));
    ((struct gd_8_s32 *)sp10)->v = func_800925B8(((u32)(sp18 * sp1C) >> 2));
    ((struct gd_10_s32 *)sp10)->v = 0;
    return sp10;
}
