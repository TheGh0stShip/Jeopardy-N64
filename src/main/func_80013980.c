#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern struct n64dk_e8 *D_800E0F4C;

void func_80013980(u16 arg0) {
    s32 sp4;

    switch ((arg0 & 240) & 0xFFFF) {
    case 0:
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xB900031D;
        ((struct gd_4_s32 *)sp4)->v = 0xF0A4000;
        return;
    case 16:
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xB900031D;
        ((struct gd_4_s32 *)sp4)->v = 0x504240;
        return;
    case 32:
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xB900031D;
        ((struct gd_4_s32 *)sp4)->v = 0xF0A4203;
        return;
    }
}
