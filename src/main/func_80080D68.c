#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_108_s32 { u8 pad[0x108]; s32 v; };
struct gd_258_s32 { u8 pad[0x258]; s32 v; };
struct gd_25C_s32 { u8 pad[0x25C]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
extern s32 D_80157768;

void func_80080D68(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s32 sp40;
    s32 sp44;
    s32 sp48;
    s32 sp4C;
    s32 sp50;
    s32 sp54;
    s32 sp58;
    s32 sp5C;
    s32 sp60;
    s32 sp64;

    sp1C = 0;
    sp20 = 0;
    sp0 = (u32)((struct gd_108_s32 *)arg0)->v / (u32)((struct gd_C_s32 *)arg0)->v;
    sp4 = (u32)((struct gd_108_s32 *)arg0)->v % (u32)((struct gd_C_s32 *)arg0)->v;
    if (arg1 < 4) {
        sp24 = arg2 >> 1;
        sp28 = arg3 >> 1;
        sp2C = arg2 & 1;
        sp30 = arg3 & 1;
        sp34 = arg4 >> 1;
        sp38 = arg5 >> 1;
        sp3C = arg4 & 1;
        sp40 = arg5 & 1;
        sp18 = *(s32 *)((struct gd_260_s32 *)arg0)->v;
        if (((struct gd_258_s32 *)arg0)->v != 0) {
            sp1C = *(s32 *)((struct gd_258_s32 *)arg0)->v;
        }
        if (((struct gd_25C_s32 *)arg0)->v != 0) {
            sp20 = *(s32 *)((struct gd_25C_s32 *)arg0)->v;
        }
        sp10 = ((struct gd_C_s32 *)arg0)->v << 4;
        sp8 = sp0 << 4;
        spC = sp4 << 4;
        if (arg1 >= 2) {
            sp8 = sp8 + 8;
        }
        if ((arg1 & 1) != 0) {
            spC = spC + 8;
        }
        sp5C = spC + sp24;
        sp54 = sp8 + sp28;
        sp60 = spC + sp34;
        sp58 = sp8 + sp38;
    } else {
        arg2 = arg2 / 2;
        arg3 = arg3 / 2;
        sp24 = arg2 >> 1;
        sp28 = arg3 >> 1;
        sp2C = arg2 & 1;
        sp30 = arg3 & 1;
        arg4 = arg4 / 2;
        arg5 = arg5 / 2;
        sp34 = arg4 >> 1;
        sp38 = arg5 >> 1;
        sp3C = arg4 & 1;
        sp40 = arg5 & 1;
        sp10 = ((struct gd_C_s32 *)arg0)->v << 3;
        sp8 = sp0 << 3;
        spC = sp4 << 3;
        sp5C = spC + sp24;
        sp54 = sp8 + sp28;
        sp60 = spC + sp34;
        sp58 = sp8 + sp38;
        if (arg1 == 5) {
            sp18 = ((struct gd_4_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
            if (((struct gd_258_s32 *)arg0)->v != 0) {
                sp1C = ((struct gd_4_s32 *)((struct gd_258_s32 *)arg0)->v)->v;
            }
            if (((struct gd_25C_s32 *)arg0)->v != 0) {
                sp20 = ((struct gd_4_s32 *)((struct gd_25C_s32 *)arg0)->v)->v;
            }
        } else {
            sp18 = ((struct gd_8_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
            if (((struct gd_258_s32 *)arg0)->v != 0) {
                sp1C = ((struct gd_8_s32 *)((struct gd_258_s32 *)arg0)->v)->v;
            }
            if (((struct gd_25C_s32 *)arg0)->v != 0) {
                sp20 = ((struct gd_8_s32 *)((struct gd_25C_s32 *)arg0)->v)->v;
            }
        }
    }
    sp44 = ((sp8 * sp10) + sp18) + spC;
    sp48 = ((sp54 * sp10) + sp1C) + sp5C;
    sp4C = ((sp58 * sp10) + sp20) + sp60;
    sp50 = arg0 + 340;
    sp64 = (s32)&D_80157768;
    if (arg6 == 0) {
        sp14 = 0;
        for (;;) {
            if (sp14 >= 4) {
                break;
            }
            (*(s8 *)sp44) = *(u8 *)(((((*(u8 *)sp48) + (*(u8 *)sp4C)) >> 1) + (*(s16 *)sp50)) + sp64);
            (*(s8 *)(sp44 + 1)) = *(u8 *)(((((*(u8 *)(sp48 + 1)) + (*(u8 *)(sp4C + 1))) >> 1) + (*(s16 *)(sp50 + 2))) + sp64);
            (*(s8 *)(sp44 + 2)) = *(u8 *)(((((*(u8 *)(sp48 + 2)) + (*(u8 *)(sp4C + 2))) >> 1) + (*(s16 *)(sp50 + 4))) + sp64);
            (*(s8 *)(sp44 + 3)) = *(u8 *)(((((*(u8 *)(sp48 + 3)) + (*(u8 *)(sp4C + 3))) >> 1) + (*(s16 *)(sp50 + 6))) + sp64);
            (*(s8 *)(sp44 + 4)) = *(u8 *)(((((*(u8 *)(sp48 + 4)) + (*(u8 *)(sp4C + 4))) >> 1) + (*(s16 *)(sp50 + 8))) + sp64);
            (*(s8 *)(sp44 + 5)) = *(u8 *)(((((*(u8 *)(sp48 + 5)) + (*(u8 *)(sp4C + 5))) >> 1) + (*(s16 *)(sp50 + 10))) + sp64);
            (*(s8 *)(sp44 + 6)) = *(u8 *)(((((*(u8 *)(sp48 + 6)) + (*(u8 *)(sp4C + 6))) >> 1) + (*(s16 *)(sp50 + 12))) + sp64);
            (*(s8 *)(sp44 + 7)) = *(u8 *)(((((*(u8 *)(sp48 + 7)) + (*(u8 *)(sp4C + 7))) >> 1) + (*(s16 *)(sp50 + 14))) + sp64);
            sp44 = sp44 + sp10;
            sp48 = sp48 + sp10;
            sp4C = sp4C + sp10;
            (*(s8 *)sp44) = *(u8 *)(((((*(u8 *)sp48) + (*(u8 *)sp4C)) >> 1) + (*(s16 *)(sp50 + 16))) + sp64);
            (*(s8 *)(sp44 + 1)) = *(u8 *)(((((*(u8 *)(sp48 + 1)) + (*(u8 *)(sp4C + 1))) >> 1) + (*(s16 *)(sp50 + 18))) + sp64);
            (*(s8 *)(sp44 + 2)) = *(u8 *)(((((*(u8 *)(sp48 + 2)) + (*(u8 *)(sp4C + 2))) >> 1) + (*(s16 *)(sp50 + 20))) + sp64);
            (*(s8 *)(sp44 + 3)) = *(u8 *)(((((*(u8 *)(sp48 + 3)) + (*(u8 *)(sp4C + 3))) >> 1) + (*(s16 *)(sp50 + 22))) + sp64);
            (*(s8 *)(sp44 + 4)) = *(u8 *)(((((*(u8 *)(sp48 + 4)) + (*(u8 *)(sp4C + 4))) >> 1) + (*(s16 *)(sp50 + 24))) + sp64);
            (*(s8 *)(sp44 + 5)) = *(u8 *)(((((*(u8 *)(sp48 + 5)) + (*(u8 *)(sp4C + 5))) >> 1) + (*(s16 *)(sp50 + 26))) + sp64);
            (*(s8 *)(sp44 + 6)) = *(u8 *)(((((*(u8 *)(sp48 + 6)) + (*(u8 *)(sp4C + 6))) >> 1) + (*(s16 *)(sp50 + 28))) + sp64);
            (*(s8 *)(sp44 + 7)) = *(u8 *)(((((*(u8 *)(sp48 + 7)) + (*(u8 *)(sp4C + 7))) >> 1) + (*(s16 *)(sp50 + 30))) + sp64);
            sp50 = sp50 + 32;
            sp44 = sp44 + sp10;
            sp48 = sp48 + sp10;
            sp4C = sp4C + sp10;
            sp14++;
        }
        return;
    }
    for (sp14 = 0;;) {
        if (sp14 >= 4) {
            return;
        }
        (*(s8 *)sp44) = ((*(u8 *)sp48) + (*(u8 *)sp4C)) >> 1;
        (*(s8 *)(sp44 + 1)) = ((*(u8 *)(sp48 + 1)) + (*(u8 *)(sp4C + 1))) >> 1;
        (*(s8 *)(sp44 + 2)) = ((*(u8 *)(sp48 + 2)) + (*(u8 *)(sp4C + 2))) >> 1;
        (*(s8 *)(sp44 + 3)) = ((*(u8 *)(sp48 + 3)) + (*(u8 *)(sp4C + 3))) >> 1;
        (*(s8 *)(sp44 + 4)) = ((*(u8 *)(sp48 + 4)) + (*(u8 *)(sp4C + 4))) >> 1;
        (*(s8 *)(sp44 + 5)) = ((*(u8 *)(sp48 + 5)) + (*(u8 *)(sp4C + 5))) >> 1;
        (*(s8 *)(sp44 + 6)) = ((*(u8 *)(sp48 + 6)) + (*(u8 *)(sp4C + 6))) >> 1;
        (*(s8 *)(sp44 + 7)) = ((*(u8 *)(sp48 + 7)) + (*(u8 *)(sp4C + 7))) >> 1;
        sp44 = sp44 + sp10;
        sp48 = sp48 + sp10;
        sp4C = sp4C + sp10;
        (*(s8 *)sp44) = ((*(u8 *)sp48) + (*(u8 *)sp4C)) >> 1;
        (*(s8 *)(sp44 + 1)) = ((*(u8 *)(sp48 + 1)) + (*(u8 *)(sp4C + 1))) >> 1;
        (*(s8 *)(sp44 + 2)) = ((*(u8 *)(sp48 + 2)) + (*(u8 *)(sp4C + 2))) >> 1;
        (*(s8 *)(sp44 + 3)) = ((*(u8 *)(sp48 + 3)) + (*(u8 *)(sp4C + 3))) >> 1;
        (*(s8 *)(sp44 + 4)) = ((*(u8 *)(sp48 + 4)) + (*(u8 *)(sp4C + 4))) >> 1;
        (*(s8 *)(sp44 + 5)) = ((*(u8 *)(sp48 + 5)) + (*(u8 *)(sp4C + 5))) >> 1;
        (*(s8 *)(sp44 + 6)) = ((*(u8 *)(sp48 + 6)) + (*(u8 *)(sp4C + 6))) >> 1;
        (*(s8 *)(sp44 + 7)) = ((*(u8 *)(sp48 + 7)) + (*(u8 *)(sp4C + 7))) >> 1;
        sp44 = sp44 + sp10;
        sp48 = sp48 + sp10;
        sp4C = sp4C + sp10;
        sp14++;
    }
}
