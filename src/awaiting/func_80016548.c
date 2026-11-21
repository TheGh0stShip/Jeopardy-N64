#include "../main/n64dk_lift.h"

struct gd_4_f32 { u8 pad[0x4]; f32 v; };
struct gd_8_f32 { u8 pad[0x8]; f32 v; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_28_s32 { u8 pad[0x28]; s32 v; };
struct gd_2C_s32 { u8 pad[0x2C]; s32 v; };
struct gd_30_f32 { u8 pad[0x30]; f32 v; };
extern s32 D_800D768C;
s32 func_800359E8();

void func_80016548(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (arg0 != 0) {
        if (D_800D768C < 300) {
            ((struct gd_10_s16 *)arg0)->v = (s32)(*(f32 *)((D_800D768C * 24) + arg1));
            ((struct gd_12_s16 *)arg0)->v = (s32)((struct gd_4_f32 *)((D_800D768C * 24) + arg1))->v;
            ((struct gd_14_s16 *)arg0)->v = (s32)((struct gd_8_f32 *)((D_800D768C * 24) + arg1))->v;
        } else {
            func_800359E8(43);
        }
        ((struct gd_28_s32 *)arg0)->v = 0;
        ((struct gd_2C_s32 *)arg0)->v = 0;
        ((struct gd_30_f32 *)arg0)->v = (f32)((f64)((u32)arg2));
    }
}
