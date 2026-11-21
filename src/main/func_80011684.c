#include "n64dk_lift.h"

struct gd_1C_s32 { u8 pad[0x1C]; s32 v; };
struct gd_20_s32 { u8 pad[0x20]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
struct n64dk_a80050824 { s32 m0; u8 pad4[0x8]; };
extern struct n64dk_a80050824 D_80050824[];
extern s32 func_800113B8;
extern s32 D_80050874;
extern s32 D_8005088C;
extern s32 D_80074EF8;
extern s32 D_800D7D20;
extern s32 D_800E3330;
extern s32 D_800E69F0;
extern s32 D_800E6B08;
s32 func_800077D8();
s32 func_8000785C();
s32 func_800111D0(s32, s32, f32, f32, s32);
s32 func_800115BC();
s32 func_80035760();
s32 func_8008A8F8();
s32 func_800927E8();

void func_80011684(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp18;
    s32 sp1C;

    D_8005088C = 1;
    if (D_80074EF8 != 0) {
        func_8000785C(1);
        func_800927E8(0);
    }
    D_800E6B08 = arg0;
    D_800E3330 = 0;
    sp18 = func_80035760(((s32)&func_800113B8), 0x5010000);
    (*(s32 *)((struct gd_6C_s32 *)sp18)->v) = func_800111D0(sp18, ((s32)&D_80050874), ((f32)arg2), ((f32)arg3), arg0);
    ((struct gd_20_s32 *)((struct gd_6C_s32 *)sp18)->v)->v = D_80050824[arg0].m0;
    ((struct gd_1C_s32 *)((struct gd_6C_s32 *)sp18)->v)->v = arg1;
    D_800E69F0 = func_800077D8();
    D_800D7D20 = 0;
    sp1C = func_800115BC(arg0);
    func_8008A8F8(sp1C);
}
