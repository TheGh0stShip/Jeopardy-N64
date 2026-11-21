#include "n64dk_lift.h"

struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_18_f32 { u8 pad[0x18]; f32 v; };
struct gd_28_f32 { u8 pad[0x28]; f32 v; };
struct gd_2C_f32 { u8 pad[0x2C]; f32 v; };
struct gd_30_f32 { u8 pad[0x30]; f32 v; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
struct n64dk_a80050496 { u16 m0; u8 pad2[0x2]; u16 m4; u8 pad6[0x2]; u16 m8; u8 padA[0x16]; };
extern struct n64dk_a80050496 D_80050496[];
struct n64dk_a800504A0 { f32 m0; f32 m4; f32 m8; u8 padC[0x14]; };
extern struct n64dk_a800504A0 D_800504A0[];
extern f32 D_80000644;

void func_8000B248(s32 arg0, s32 arg1) {
    ((struct gd_18_f32 *)arg0)->v = D_80000644;
    ((struct gd_10_s16 *)arg0)->v = D_80050496[arg1].m0;
    ((struct gd_12_s16 *)arg0)->v = D_80050496[arg1].m4;
    ((struct gd_14_s16 *)arg0)->v = D_80050496[arg1].m8;
    ((struct gd_28_f32 *)arg0)->v = D_800504A0[arg1].m0;
    ((struct gd_2C_f32 *)arg0)->v = D_800504A0[arg1].m4;
    ((struct gd_30_f32 *)arg0)->v = D_800504A0[arg1].m8;
    ((struct gd_48_s32 *)arg0)->v = 0;
}
