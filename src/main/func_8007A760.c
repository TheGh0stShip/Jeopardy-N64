#include "n64dk_lift.h"

struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_FC_s32 { u8 pad[0xFC]; s32 v; };
struct gd_100_s32 { u8 pad[0x100]; s32 v; };
struct gd_104_s32 { u8 pad[0x104]; s32 v; };
struct gd_108_s32 { u8 pad[0x108]; s32 v; };
struct gd_140_s32 { u8 pad[0x140]; s32 v; };
struct gd_144_s32 { u8 pad[0x144]; s32 v; };
struct gd_148_s32 { u8 pad[0x148]; s32 v; };
struct gd_14C_s32 { u8 pad[0x14C]; s32 v; };
struct gd_150_s32 { u8 pad[0x150]; s32 v; };
struct gd_1D4_s16 { u8 pad[0x1D4]; s16 v; };
struct gd_1D6_s16 { u8 pad[0x1D6]; s16 v; };
struct gd_1D8_s16 { u8 pad[0x1D8]; s16 v; };
struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
s32 func_80076178();
s32 func_80076A68();
s32 func_80092594();

s32 func_8007A760(s32 arg0) {
    s32 sp10;

    if (arg0 == 0) {
    }
    if (((struct gd_1E8_s32 *)arg0)->v < 2) {
        func_80076178(arg0);
    }
    ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v + 24;
    if ((((struct gd_1E0_s32 *)arg0)->v & 32) != 0) {
        ((struct gd_1E8_s32 *)arg0)->v--;
        ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 32;
        ((struct n64dk_p1E4_4 *)arg0)->v++;
        ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
    } else {
        ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << 24;
    }
    if (((struct gd_1E8_s32 *)arg0)->v < 2) {
        func_80076178(arg0);
    }
    ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v + 8;
    if ((((struct gd_1E0_s32 *)arg0)->v & 32) != 0) {
        ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 32;
        ((struct n64dk_p1E4_4 *)arg0)->v++;
        ((struct gd_1E8_s32 *)arg0)->v--;
        if (((struct gd_1E0_s32 *)arg0)->v != 0) {
            ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v | ((u32)(*(s32 *)((struct gd_1E4_s32 *)arg0)->v) >> (u32)(8 - ((struct gd_1E0_s32 *)arg0)->v));
        }
        sp10 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
        ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
    } else {
        sp10 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xFF000000) >> 24;
        ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << 8;
    }
    ((struct gd_FC_s32 *)arg0)->v = sp10;
    if (((struct gd_1E8_s32 *)arg0)->v < 2) {
        func_80076178(arg0);
    }
    ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v + 5;
    if ((((struct gd_1E0_s32 *)arg0)->v & 32) != 0) {
        ((struct gd_1E0_s32 *)arg0)->v = ((struct gd_1E0_s32 *)arg0)->v - 32;
        ((struct n64dk_p1E4_4 *)arg0)->v++;
        ((struct gd_1E8_s32 *)arg0)->v--;
        if (((struct gd_1E0_s32 *)arg0)->v != 0) {
            ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v | ((u32)(*(s32 *)((struct gd_1E4_s32 *)arg0)->v) >> (u32)(5 - ((struct gd_1E0_s32 *)arg0)->v));
        }
        sp10 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xF8000000) >> 27;
        ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
    } else {
        sp10 = (u32)(((struct gd_234_s32 *)arg0)->v & 0xF8000000) >> 27;
        ((struct gd_234_s32 *)arg0)->v = ((struct gd_234_s32 *)arg0)->v << 5;
    }
    ((struct gd_100_s32 *)arg0)->v = sp10;
    if (((struct gd_104_s32 *)arg0)->v != 0) {
        func_80092594(((struct gd_104_s32 *)arg0)->v);
        ((struct gd_104_s32 *)arg0)->v = 0;
    }
    ((struct gd_104_s32 *)arg0)->v = func_80076A68(arg0);
    ((struct gd_140_s32 *)arg0)->v = -2;
    ((struct gd_144_s32 *)arg0)->v = 0;
    ((struct gd_148_s32 *)arg0)->v = 0;
    ((struct gd_14C_s32 *)arg0)->v = 0;
    ((struct gd_150_s32 *)arg0)->v = 0;
    ((struct gd_108_s32 *)arg0)->v = ((((struct gd_FC_s32 *)arg0)->v - 1) * ((struct gd_C_s32 *)arg0)->v) - 1;
    ((struct gd_1D4_s16 *)arg0)->v = 0x2000;
    ((struct gd_1D6_s16 *)arg0)->v = 0x2000;
    ((struct gd_1D8_s16 *)arg0)->v = 0x2000;
    return 1;
}
