#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern s32 D_80058074;
extern s32 D_800DE62C;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E0F50;
extern s32 D_800E0FF8;
extern s32 D_800E1000;
extern s32 D_800E3360;
s32 func_80011AD8();
s32 func_8001AB70();
s32 func_8001FBF8();
s32 func_8002142C();

void func_80021B98(void) {
    s32 sp20;

    func_8001AB70(D_800E0F50, D_800E0FF8, D_800DE62C, D_800E1000, 0, 0, 0, 180);
    func_8001AB70((D_800E0F50 + 4), (D_800E0FF8 + 4), (D_800DE62C - 8), (D_800E1000 - 8), 8, 8, 128, 255);
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xE7000000;
    ((struct gd_4_s32 *)sp20)->v = 0;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0x6000000;
    ((struct gd_4_s32 *)sp20)->v = (s32)&D_010942B8;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xBA001402;
    ((struct gd_4_s32 *)sp20)->v = 0x200000;
    func_8002142C((D_800E0F50 + 4), (D_800E0FF8 + 4), (D_800DE62C - 8), (D_800E1000 - 8), ((s32)&D_80058074));
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xBA001402;
    ((struct gd_4_s32 *)sp20)->v = 0;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xB900031D;
    ((struct gd_4_s32 *)sp20)->v = 0x5041C8;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xFA000000;
    ((struct gd_4_s32 *)sp20)->v = 0xFFFF00FF;
    func_80011AD8(1);
    func_8001FBF8((D_800E0F50 + 4), (D_800E0FF8 + 10), (D_800DE62C - 8), 90, D_800E3360);
}
