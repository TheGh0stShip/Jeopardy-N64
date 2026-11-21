#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_0109FBA0;
extern f32 D_800005FC;
extern f32 D_80000600;
extern f32 D_80000604;
extern f32 D_80000608;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_8003F00C();
s32 func_800411E8(s32, s32, s32, s32, f32, f32, f32);
s32 func_8004CB40(s32, s32, s32, s32, s32, s32, s32, s32, f32, s32);

void func_80009AF0(s32 arg0) {
    u16 sp28;
    s32 sp2C;

    func_800411E8(arg0, ((s32)&sp28), 0x42040000, 0x3FAAAAAB, D_800005FC, D_80000600, D_80000604);
    sp2C = (s32)D_800E0F4C++;
    (*(s32 *)sp2C) = 0xBC00000E;
    ((struct gd_4_s32 *)sp2C)->v = sp28;
    func_8004CB40((arg0 + 64), 0, 0, 0x447A0000, 0, 0, 0, 0, D_80000608, 0);
    func_8003F00C((arg0 + 0x12D40), 0x41400000, 0x40E00000, 0x3F800000);
    sp2C = (s32)D_800E0F4C++;
    (*(s32 *)sp2C) = 0x1030040;
    ((struct gd_4_s32 *)sp2C)->v = arg0;
    sp2C = (s32)D_800E0F4C++;
    (*(s32 *)sp2C) = 0x1010040;
    ((struct gd_4_s32 *)sp2C)->v = arg0 + 64;
    sp2C = (s32)D_800E0F4C++;
    (*(s32 *)sp2C) = 0x1020040;
    ((struct gd_4_s32 *)sp2C)->v = arg0 + 0x12D40;
    sp2C = (s32)D_800E0F4C++;
    (*(s32 *)sp2C) = 0x6000000;
    ((struct gd_4_s32 *)sp2C)->v = (s32)&D_0109FBA0;
}
