#include "n64dk_lift.h"

struct gd_A0_s32 { u8 pad[0xA0]; s32 v; };
struct gd_A4_s32 { u8 pad[0xA4]; s32 v; };
struct gd_C4_s32 { u8 pad[0xC4]; s32 v; };
struct gd_C8_s32 { u8 pad[0xC8]; s32 v; };
struct gd_F0_s32 { u8 pad[0xF0]; s32 v; };
struct gd_F4_s32 { u8 pad[0xF4]; s32 v; };
struct gd_F8_s32 { u8 pad[0xF8]; s32 v; };
struct gd_104_s32 { u8 pad[0x104]; s32 v; };
struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_1EC_s32 { u8 pad[0x1EC]; s32 v; };
struct gd_1F0_s32 { u8 pad[0x1F0]; s32 v; };
struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_23C_s32 { u8 pad[0x23C]; s32 v; };
struct gd_244_s32 { u8 pad[0x244]; s32 v; };
struct gd_248_s32 { u8 pad[0x248]; s32 v; };
struct gd_258_s32 { u8 pad[0x258]; s32 v; };
struct gd_25C_s32 { u8 pad[0x25C]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
struct n64dk_f264_s32 { u8 pad[0x264]; s32 m[1]; };
struct n64dk_h20_8_s8 { u8 pad[0x20]; s8 m[1][0x8]; };
struct n64dk_h60_8_s8 { u8 pad[0x60]; s8 m[1][0x8]; };
extern s32 D_80075840;
s32 func_800925B8();

s32 func_80076F64(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    if ((u32)arg0 < 4) {
        return 0;
    }
    arg0 = (u32)(arg0 + 3) >> 2;
    sp18 = func_800925B8(632);
    ((struct gd_C4_s32 *)sp18)->v = ((struct gd_C8_s32 *)sp18)->v = ((struct gd_F0_s32 *)sp18)->v = ((struct gd_F8_s32 *)sp18)->v = ((struct gd_F4_s32 *)sp18)->v = ((struct gd_104_s32 *)sp18)->v = ((struct gd_A0_s32 *)sp18)->v = ((struct gd_A4_s32 *)sp18)->v = 0;
    sp10 = 0;
    for (;;) {
        if (sp10 >= 8) {
            break;
        }
        sp14 = 0;
        for (;;) {
            if (sp14 >= 8) {
                break;
            }
            ((struct n64dk_h20_8_s8 *)sp18)->m[sp10][sp14] = *(u8 *)(((sp10 * 8) + sp14) + ((s32)&D_80075840));
            sp14++;
        }
        sp10++;
    }
    for (sp10 = 0;;) {
        if (sp10 >= 8) {
            break;
        }
        sp14 = 0;
        for (;;) {
            if (sp14 >= 8) {
                break;
            }
            ((struct n64dk_h60_8_s8 *)sp18)->m[sp10][sp14] = 16;
            sp14++;
        }
        sp10++;
    }
    ((struct gd_260_s32 *)sp18)->v = ((struct gd_258_s32 *)sp18)->v = ((struct gd_25C_s32 *)sp18)->v = 0;
    sp10 = 0;
    for (;;) {
        if (sp10 >= 5) {
            break;
        }
        ((struct n64dk_f264_s32 *)sp18)->m[sp10] = 0;
        sp10++;
    }
    ((struct gd_1EC_s32 *)sp18)->v = func_800925B8((arg0 * 4));
    ((struct gd_1F0_s32 *)sp18)->v = arg0 - 1;
    ((struct gd_1E0_s32 *)sp18)->v = 0;
    ((struct gd_1E8_s32 *)sp18)->v = 0;
    ((struct gd_1E4_s32 *)sp18)->v = ((struct gd_1EC_s32 *)sp18)->v;
    ((struct gd_1F4_s32 *)sp18)->v = 0;
    ((struct gd_23C_s32 *)sp18)->v = 0;
    ((struct gd_248_s32 *)sp18)->v = 0;
    ((struct gd_244_s32 *)sp18)->v = 0;
    ((struct gd_204_s32 *)sp18)->v = 0;
    return sp18;
}
