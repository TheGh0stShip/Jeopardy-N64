#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E3B2C;
s32 func_80011AD8();
s32 func_8001FBF8();

void func_8002239C(void) {
    s32 sp18;

    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0xE7000000;
    ((struct gd_4_s32 *)sp18)->v = 0;
    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0x6000000;
    ((struct gd_4_s32 *)sp18)->v = (s32)&D_010942B8;
    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0xBA001402;
    ((struct gd_4_s32 *)sp18)->v = 0x200000;
    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0xBA001402;
    ((struct gd_4_s32 *)sp18)->v = 0;
    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0xB900031D;
    ((struct gd_4_s32 *)sp18)->v = 0x5041C8;
    func_80011AD8(1);
    sp18 = (s32)D_800E0F4C++;
    (*(s32 *)sp18) = 0xFA000000;
    ((struct gd_4_s32 *)sp18)->v = 0x808080FF;
    func_8001FBF8(0, 50, 320, 200, D_800E3B2C);
}
