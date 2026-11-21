#include "n64dk_lift.h"

struct gd_4_s16 { u8 pad[0x4]; s16 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_14_s32 { u8 pad[0x14]; s32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_1C_s32 { u8 pad[0x1C]; s32 v; };
struct gd_20_s32 { u8 pad[0x20]; s32 v; };
struct gd_28_s32 { u8 pad[0x28]; s32 v; };
struct gd_2C_s32 { u8 pad[0x2C]; s32 v; };
struct gd_30_s32 { u8 pad[0x30]; s32 v; };
struct gd_34_s32 { u8 pad[0x34]; s32 v; };
struct gd_38_s32 { u8 pad[0x38]; s32 v; };
struct gd_3C_s32 { u8 pad[0x3C]; s32 v; };
struct gd_40_s32 { u8 pad[0x40]; s32 v; };
struct gd_44_s32 { u8 pad[0x44]; s32 v; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
struct gd_4C_s32 { u8 pad[0x4C]; s32 v; };
struct gd_50_s32 { u8 pad[0x50]; s32 v; };
struct gd_54_s32 { u8 pad[0x54]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_80036730;
extern s32 D_80036800;
extern s32 D_80039000;
extern s32 D_8004DFC8;
extern s32 D_80071CA0;
extern s32 D_800E3364;
extern u16 D_800E3366;
extern s32 D_800E6B48;
extern s32 D_800E6D48;
extern u16 D_800E6E7E;
extern s32 D_800E92C0;
s32 func_80007470();
s32 func_8003BCD8();
s32 func_8003BE48();
s32 func_8003CF10();
s32 func_80041458();
s32 func_80043338();

s32 func_80006E44(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;

    sp1C = 0;
    func_80007470();
    sp10 = func_80043338((*(s32 *)arg0));
    if (arg1 != 0) {
        func_8003BE48((*(s32 *)arg1), (((struct gd_4_s16 *)arg1)->v << 2));
    }
    sp1C = (u32)func_8003BCD8() >> 2;
    ((struct gd_4_s16 *)arg0)->v = ((D_800E6E7E - ((u16)sp1C)) + 96) & 0xFFF0u;
    if ((u32)((struct gd_4_s16 *)arg0)->v < (u32)D_800E3364) {
        ((struct gd_4_s16 *)arg0)->v = D_800E3366;
    }
    sp14 = func_8003CF10((*(s32 *)((D_8004DFC8 * 4) + ((s32)&D_800E6B48))), ((s32)&sp18), sp10, ((struct gd_4_s16 *)arg0)->v);
    if (sp18 == 0) {
        return 0;
    }
    sp20 = arg0 + 8;
    (*(s32 *)sp20) = 0;
    ((struct gd_50_s32 *)sp20)->v = (s32)&D_800E6D48;
    ((struct gd_54_s32 *)sp20)->v = arg0 + 96;
    ((struct gd_8_s32 *)sp20)->v = 2;
    ((struct gd_40_s32 *)sp20)->v = *(s32 *)((D_8004DFC8 * 4) + ((s32)&D_800E6B48));
    ((struct gd_44_s32 *)sp20)->v = (s32)((u32)((struct n64dk_e8 *)sp14 - (struct n64dk_e8 *)(*(s32 *)((D_8004DFC8 * 4) + ((s32)&D_800E6B48)))) * 8);
    ((struct gd_10_s32 *)sp20)->v = 2;
    ((struct gd_18_s32 *)sp20)->v = (s32)&D_80036730;
    ((struct gd_1C_s32 *)sp20)->v = ((s32)&D_80036800) - ((s32)&D_80036730);
    ((struct gd_14_s32 *)sp20)->v = 2;
    ((struct gd_20_s32 *)sp20)->v = (s32)&D_80039000;
    ((struct gd_28_s32 *)sp20)->v = (s32)&D_80071CA0;
    ((struct gd_2C_s32 *)sp20)->v = 2048;
    ((struct gd_30_s32 *)sp20)->v = 0;
    ((struct gd_34_s32 *)sp20)->v = 0;
    ((struct gd_38_s32 *)sp20)->v = 0;
    ((struct gd_3C_s32 *)sp20)->v = 0;
    ((struct gd_48_s32 *)sp20)->v = 0;
    ((struct gd_4C_s32 *)sp20)->v = 0;
    func_80041458(D_800E92C0, sp20, 1);
    D_8004DFC8 = D_8004DFC8 ^ 1;
    return 1;
}
