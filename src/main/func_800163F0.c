#include "n64dk_lift.h"

struct gd_E_s16 { u8 pad[0xE]; s16 v; };
s32 func_80011A7C();

void func_800163F0(register s32 arg0, register s32 arg1) {
    u16 sp10;
    u16 sp12;
    s32 sp14;

    sp10 = arg0;
    sp12 = arg1;
    if (sp12 != 0) {
        sp14 = func_80011A7C(sp10);
        ((struct gd_E_s16 *)sp14)->v = sp12;
    }
}
