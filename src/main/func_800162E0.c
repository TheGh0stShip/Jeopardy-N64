#include "n64dk_lift.h"

struct gd_8_s16 { u8 pad[0x8]; s16 v; };
struct gd_8_u16 { u8 pad[0x8]; u16 v; };
struct gd_1C_s16 { u8 pad[0x1C]; s16 v; };
struct gd_1C_u16 { u8 pad[0x1C]; u16 v; };
s32 func_80011A7C();

void func_800162E0(register s32 arg0, register s32 arg1) {
    u16 sp10;
    u16 sp12;
    s32 sp14;

    sp10 = arg0;
    sp12 = arg1;
    sp14 = func_80011A7C(sp10);
    ((struct gd_1C_s16 *)sp14)->v = ((struct gd_1C_u16 *)sp14)->v - sp12;
    ((struct gd_8_s16 *)sp14)->v = ((struct gd_8_u16 *)sp14)->v & 0x7FFF;
}
