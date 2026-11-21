#include "n64dk_lift.h"

struct n64dk_m140_40 { u8 pad[0x140]; struct { u8 b[0x40]; } m[1]; };
struct n64dk_m4C40_40 { u8 pad[0x4C40]; struct { u8 b[0x40]; } m[1]; };
struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_v4 { u8 pad[0x4]; void *v; };
extern s32 D_0109FC00;
extern s32 D_80050750;
extern s32 D_80050758;
extern s32 D_80050768;
extern s32 D_80050778;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_8003F00C();
s32 func_8003F260(s32, f32, f32, f32);

void func_8000D060(s32 arg0, s32 arg1) {
    s32 sp10;

    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0xBC000002;
    ((struct gd_4_s32 *)sp10)->v = 0x80000080;
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x3860010;
    ((struct gd_4_s32 *)sp10)->v = (s32)&D_80050758;
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x3880010;
    ((struct gd_4_s32 *)sp10)->v = (s32)&D_80050768;
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x38A0010;
    ((struct gd_4_s32 *)sp10)->v = (s32)&D_80050778;
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x38C0010;
    ((struct gd_4_s32 *)sp10)->v = (s32)&D_80050750;
    func_8003F260(((s32)&((struct n64dk_m4C40_40 *)arg1)->m[*(s32 *)arg0]), ((f32)((struct gd_10_s16 *)arg0)->v), ((f32)((struct gd_12_s16 *)arg0)->v), ((f32)((struct gd_14_s16 *)arg0)->v));
    func_8003F00C(((s32)&((struct n64dk_m140_40 *)arg1)->m[*(s32 *)arg0]), ((struct gd_18_s32 *)arg0)->v, ((struct gd_18_s32 *)arg0)->v, ((struct gd_18_s32 *)arg0)->v);
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x1020040;
    ((struct n64dk_v4 *)sp10)->v = (void *)&((struct n64dk_m4C40_40 *)arg1)->m[*(s32 *)arg0];
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x1000040;
    ((struct n64dk_v4 *)sp10)->v = (void *)&((struct n64dk_m140_40 *)arg1)->m[*(s32 *)arg0];
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x6000000;
    ((struct gd_4_s32 *)sp10)->v = (s32)&D_0109FC00;
    sp10 = (s32)D_800E0F4C++;
    (*(s32 *)sp10) = 0x6000000;
    ((struct gd_4_s32 *)sp10)->v = ((struct gd_48_s32 *)arg0)->v;
}
