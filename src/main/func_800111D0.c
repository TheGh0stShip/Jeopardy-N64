#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_18_f32 { u8 pad[0x18]; f32 v; };
struct gd_28_s32 { u8 pad[0x28]; s32 v; };
struct gd_2C_s32 { u8 pad[0x2C]; s32 v; };
struct gd_30_s32 { u8 pad[0x30]; s32 v; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern f32 D_80000758;
extern s32 func_800100D8;
s32 func_80027504();

s32 func_800111D0(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp10;
    s32 sp14;

    sp10 = 0;
    if (arg0 != 0) {
        sp10 = ((struct gd_4_s32 *)arg0)->v;
    }
    sp14 = func_80027504(sp10, ((s32)&func_800100D8), 0x5010000);
    ((struct gd_18_f32 *)sp14)->v = D_80000758;
    ((struct gd_10_s16 *)sp14)->v = (s32)arg2;
    ((struct gd_12_s16 *)sp14)->v = (s32)arg3;
    ((struct gd_14_s16 *)sp14)->v = 0;
    ((struct gd_28_s32 *)sp14)->v = 0;
    ((struct gd_2C_s32 *)sp14)->v = 0;
    ((struct gd_30_s32 *)sp14)->v = 0;
    ((struct gd_48_s32 *)sp14)->v = 0;
    return sp14;
}
