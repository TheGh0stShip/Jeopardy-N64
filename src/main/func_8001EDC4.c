#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_01094198;
extern s32 D_010942B8;
extern s32 D_80001004;
extern s32 D_80001010;
extern s32 D_80001024;
extern s32 D_80001038;
extern s32 D_80001044;
extern s32 D_80001058;
extern s32 D_80058074;
extern s32 D_800580C4;
extern s32 D_8005960C;
extern u16 D_8005960E;
extern s32 D_800DE5D8;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_80011AD8();
s32 func_80012B08();
s32 func_8001AB70();
s32 func_8002142C();
s32 func_800494AC();

void func_8001EDC4(void) {
    s32 pad0;
    s32 sp24;

    func_8001AB70(90, 20, 140, 120, 0, 0, 0, 180);
    func_8001AB70(94, 24, 132, 112, 8, 8, 128, 255);
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_010942B8;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0x200000;
    func_8002142C(94, 24, 132, 112, ((s32)&D_80058074));
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_01094198;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xFA000000;
    ((struct gd_4_s32 *)sp24)->v = 255;
    if (D_800580C4 < 4) {
        func_80011AD8(D_8005960E);
    } else {
        func_80011AD8(0);
    }
    func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001004), D_8005960C);
    func_80012B08(((s32)&D_800DE5D8), 0x42C20000, 0x41F00000);
    func_80012B08(((s32)&D_80001010), 0x42C20000, 0x42340000);
    func_80012B08(((s32)&D_80001024), 0x42C20000, 0x42700000);
    func_80012B08(((s32)&D_80001038), 0x42C20000, 0x42960000);
    func_80012B08(((s32)&D_80001044), 0x42C20000, 0x42B40000);
    func_80012B08(((s32)&D_80001058), 0x42C20000, 0x42D20000);
}
