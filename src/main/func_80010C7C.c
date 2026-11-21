#include "n64dk_lift.h"

struct n64dk_o800E931C { u8 pad[0x4]; struct { u8 b[0x36DFC]; } a; };
extern struct n64dk_o800E931C D_800E931C[];
extern s32 D_800DE53C;
extern s32 D_800E0DE8;
extern s32 D_800E3330;
extern s32 D_800E368C;
extern s32 D_800E9320;
s32 func_80043338();

void func_80010C7C(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 pad0;
    s32 sp38;

    sp38 = 0x2000000;
    sp10 = func_80043338(((s32)&D_800E931C[D_800DE53C].a + 0x1AD80));
    sp10 = sp10 - func_80043338(((D_800DE53C * 0x36E00) + ((s32)&D_800E9320)));
    sp24 = arg0;
    sp28 = (s32)&D_800E931C[D_800DE53C].a + 0x1AD80;
    if (D_800E3330 != 0) {
        sp28 = D_800E368C;
        sp2C = D_800E0DE8;
        sp20 = 0x17C0;
        sp1C = 190;
        sp14 = 0;
        for (;;) {
            if (sp14 >= 96) {
                break;
            }
            sp30 = *(s32 *)((sp1C * 4) + sp2C);
            sp18 = 0;
            for (;;) {
                if (sp18 >= 64) {
                    break;
                }
                if (sp18 == 32) {
                    sp30 = *(s32 *)(((sp1C * 4) + sp2C) + 4);
                }
                if ((sp30 & 0x80000000) != 0) {
                    (*(s16 *)((((sp14 * 64) + sp18) * 2) + sp28)) = *(u16 *)((sp20 * 2) + sp24);
                } else {
                    (*(s16 *)((((sp14 * 64) + sp18) * 2) + sp28)) = 0;
                }
                sp20++;
                sp30 = sp30 << 1;
                sp18++;
            }
            sp1C = sp1C - 2;
            sp20 = sp20 - 128;
            sp14++;
        }
        D_800E368C = D_800E368C + 0x3000;
        D_800E0DE8 = D_800E0DE8 + 768;
        return;
    }
    sp20 = 0;
    sp14 = 0;
    for (;;) {
        if (sp14 >= 64) {
            return;
        }
        sp18 = 0;
        for (;;) {
            if (sp18 >= 32) {
                break;
            }
            (*(s16 *)((((sp14 * 32) + sp18) * 2) + sp28)) = *(u16 *)((sp20 * 2) + sp24);
            (*(s16 *)(((((sp14 * 32) + sp18) * 2) + sp28) + 0x1000)) = *(u16 *)(((sp20 * 2) + sp24) + 64);
            sp20++;
            sp18++;
        }
        sp20 = sp20 + 32;
        sp14++;
    }
}
