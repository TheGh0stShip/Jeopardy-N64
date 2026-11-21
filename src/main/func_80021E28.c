#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern s32 D_80001244;
extern s32 D_80058074;
extern s32 D_8005812C;
extern s32 D_80058858;
extern s32 D_80058D5C;
extern s32 D_800599E8;
extern s32 D_80059B88;
extern s32 D_800DE5D8;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E5C88;
s32 func_80011AD8();
s32 func_8001AB70();
s32 func_8001FBF8();
s32 func_8001FD54();
s32 func_8002142C();
s32 func_800494AC();

void func_80021E28(void) {
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;

    sp20 = 200;
    sp24 = 26;
    sp28 = 100;
    sp2C = 80;
    func_8001AB70(sp20, sp24, sp28, (sp2C + 46), 0, 0, 0, 180);
    func_8001AB70((sp20 + 4), (sp24 + 4), (sp28 - 8), (sp2C - 8), 8, 8, 128, 255);
    func_8001AB70((sp20 + 4), (sp24 + 80), (sp28 - 8), 42, 8, 8, 128, 255);
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xE7000000;
    ((struct gd_4_s32 *)sp30)->v = 0;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0x6000000;
    ((struct gd_4_s32 *)sp30)->v = (s32)&D_010942B8;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xBA001402;
    ((struct gd_4_s32 *)sp30)->v = 0x200000;
    func_8002142C((sp20 + 4), (sp24 + 4), (sp28 - 8), (sp2C - 8), ((s32)&D_80058074));
    func_8002142C((sp20 + 4), (sp24 + 80), (sp28 - 8), 42, ((s32)&D_80058074));
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xBA001402;
    ((struct gd_4_s32 *)sp30)->v = 0;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xB900031D;
    ((struct gd_4_s32 *)sp30)->v = 0x5041C8;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xFA000000;
    ((struct gd_4_s32 *)sp30)->v = 0xFFFF00FF;
    func_80011AD8(1);
    if ((*(s32 *)((D_800599E8 * 4) + ((s32)&D_80059B88))) != 0) {
        func_8001FBF8((sp20 + 4), (sp24 + 25), (sp28 - 8), 90, ((*(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88))) + 5));
    }
    func_80011AD8(0);
    func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001244), (*(s32 *)((D_80058D5C * 4) + ((s32)&D_8005812C))));
    func_8001FD54((sp20 + 4), (sp24 + 86), (sp28 - 8), 90, ((s32)&D_800DE5D8));
}
