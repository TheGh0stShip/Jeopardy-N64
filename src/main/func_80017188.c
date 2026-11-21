#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_2_u16 { u8 pad[0x2]; u16 v; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_10_u16 { u8 pad[0x10]; u16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_12_u16 { u8 pad[0x12]; u16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_14_u16 { u8 pad[0x14]; u16 v; };
struct gd_28_f32 { u8 pad[0x28]; f32 v; };
struct gd_30_f32 { u8 pad[0x30]; f32 v; };
extern s32 D_01010740;
extern f32 D_80000964;
extern f32 D_80000968;
extern s32 func_80016E14;
extern s32 D_80055DC8;
extern s32 D_80055DE0;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_800E5CBC;
extern s32 D_800E6E50;
extern u16 D_800E6E52;
extern s32 D_800E6E54;
extern u16 D_800E6E56;
extern s32 D_800E6E58;
extern u16 D_800E6E5A;
extern s32 D_800E9020;
s32 func_80027388();
s32 func_80032CF0();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_80017188(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            D_800E9020 = func_80032CF0(arg1, ((s32)&D_01010740), ((s32)&func_80016E14), 0x16000000);
            ((struct gd_10_s16 *)D_800E9020)->v = ((struct gd_2_u16 *)((D_800599E8 * 4) + ((s32)&D_80055DC8)))->v;
            ((struct gd_12_s16 *)D_800E9020)->v = ((struct gd_2_u16 *)((D_800599E8 * 4) + ((s32)&D_80055DE0)))->v;
            ((struct gd_14_s16 *)D_800E9020)->v = 485 - (D_800599EC * 80);
            ((struct gd_30_f32 *)D_800E9020)->v = D_80000964;
            D_800E6E50 = (-40 - ((struct gd_10_s16 *)D_800E9020)->v) / 25;
            D_800E6E54 = (-600 - ((struct gd_12_s16 *)D_800E9020)->v) / 25;
            D_800E6E58 = (320 - ((struct gd_14_s16 *)D_800E9020)->v) / 25;
            D_800E5CBC = 25;
            break;
        }
    }
    if (D_800E5CBC >= 26) {
        func_80027388(D_800E9020);
        func_800359E8(48);
        sp10.w[1] = 0;
        sp10.w[0] = 0;
        return sp10;
    }
    if (D_800E5CBC != 0) {
        D_800E5CBC--;
        ((struct gd_28_f32 *)D_800E9020)->v = ((struct gd_28_f32 *)D_800E9020)->v + D_80000968;
        ((struct gd_10_s16 *)D_800E9020)->v = ((struct gd_10_u16 *)D_800E9020)->v + D_800E6E52;
        ((struct gd_12_s16 *)D_800E9020)->v = ((struct gd_12_u16 *)D_800E9020)->v + D_800E6E56;
        ((struct gd_14_s16 *)D_800E9020)->v = ((struct gd_14_u16 *)D_800E9020)->v + D_800E6E5A;
        sp10.w[1] = 1;
        sp10.w[0] = 0;
        return sp10;
        return;
    }
    D_800E5CBC = 26;
    sp10.w[1] = 1;
    sp10.w[0] = 30;
    return sp10;
}
