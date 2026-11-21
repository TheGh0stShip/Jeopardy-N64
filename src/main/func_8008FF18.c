#include "n64dk_lift.h"

struct gd_2_u16 { u8 pad[0x2]; u16 v; };
struct n64dk_e2 { u8 b[2]; };
extern s32 D_8015A998;
extern s32 D_8015A99C;
extern s32 D_8015A9A0;
extern s32 D_8015A9A4;
extern s32 D_8015A9A8;
extern s32 D_8015A9AC;
extern s32 D_8015A9B0;
extern s32 D_8015A9B4;

void func_8008FF18(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    struct n64dk_e2 *spC;
    struct n64dk_e2 *sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 pad0[2];
    s32 pad1;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s32 sp40;
    s32 sp44;
    s32 sp48;

    sp3C = arg5 / 2;
    spC = (void *)arg3;
    sp10 = (void *)(((sp3C * 2) + ((s32)spC)) + (sp3C * 2));
    sp14 = (arg0 + sp3C) + sp3C;
    sp1C = 0;
    for (;;) {
        if (sp1C >= arg4) {
            return;
        }
        sp18 = 0;
        for (;;) {
            if (sp18 >= sp3C) {
                break;
            }
            sp4 = *(u8 *)(arg1++);
            sp8 = *(u8 *)(arg2++);
            sp2C = *(s32 *)((sp4 * 4) + D_8015A99C);
            sp30 = *(s32 *)((sp4 * 4) + D_8015A9A0);
            sp34 = *(s32 *)((sp8 * 4) + D_8015A9A4);
            sp38 = *(s32 *)((sp8 * 4) + D_8015A9A8);
            sp0 = *(s32 *)(((*(u8 *)(arg0++)) * 4) + D_8015A998);
            sp40 = sp0 + sp2C;
            sp44 = (sp0 + sp30) + sp34;
            sp48 = sp0 + sp38;
            (*(s16 *)((s32)spC++)) = ((((struct gd_2_u16 *)((sp40 * 4) + D_8015A9AC))->v | ((struct gd_2_u16 *)((sp44 * 4) + D_8015A9B0))->v) | ((struct gd_2_u16 *)((sp48 * 4) + D_8015A9B4))->v) | 1;
            sp0 = *(s32 *)(((*(u8 *)(arg0++)) * 4) + D_8015A998);
            sp40 = sp0 + sp2C;
            sp44 = (sp0 + sp30) + sp34;
            sp48 = sp0 + sp38;
            (*(s16 *)((s32)spC++)) = ((((struct gd_2_u16 *)((sp40 * 4) + D_8015A9AC))->v | ((struct gd_2_u16 *)((sp44 * 4) + D_8015A9B0))->v) | ((struct gd_2_u16 *)((sp48 * 4) + D_8015A9B4))->v) | 1;
            sp0 = *(s32 *)(((*(u8 *)(sp14++)) * 4) + D_8015A998);
            sp40 = sp0 + sp2C;
            sp44 = (sp0 + sp30) + sp34;
            sp48 = sp0 + sp38;
            (*(s16 *)((s32)sp10++)) = ((((struct gd_2_u16 *)((sp40 * 4) + D_8015A9AC))->v | ((struct gd_2_u16 *)((sp44 * 4) + D_8015A9B0))->v) | ((struct gd_2_u16 *)((sp48 * 4) + D_8015A9B4))->v) | 1;
            sp0 = *(s32 *)(((*(u8 *)(sp14++)) * 4) + D_8015A998);
            sp40 = sp0 + sp2C;
            sp44 = (sp0 + sp30) + sp34;
            sp48 = sp0 + sp38;
            (*(s16 *)((s32)sp10++)) = ((((struct gd_2_u16 *)((sp40 * 4) + D_8015A9AC))->v | ((struct gd_2_u16 *)((sp44 * 4) + D_8015A9B0))->v) | ((struct gd_2_u16 *)((sp48 * 4) + D_8015A9B4))->v) | 1;
            sp18++;
        }
        arg0 = arg0 + (sp3C + sp3C);
        sp14 = sp14 + (sp3C + sp3C);
        spC = (void *)(((s32)spC) + ((sp3C + sp3C) * 2));
        sp10 = (void *)(((s32)sp10) + ((sp3C + sp3C) * 2));
        sp1C = sp1C + 2;
    }
}
