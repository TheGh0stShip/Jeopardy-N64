#include "n64dk_lift.h"

struct n64dk_o800E931C { u8 pad[0x4]; struct { u8 b[0x36DFC]; } a; };
extern struct n64dk_o800E931C D_800E931C[];
extern s32 D_800DE53C;
extern s32 D_800E9320;
s32 func_80043338();

void func_8000ECD0(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 pad0;
    s32 sp2C;
    s32 pad1[2];
    s32 sp38;

    sp38 = 0x2000000;
    sp10 = func_80043338(((s32)&D_800E931C[D_800DE53C].a + 0x26D80));
    sp10 = sp10 - func_80043338(((D_800DE53C * 0x36E00) + ((s32)&D_800E9320)));
    sp24 = arg0;
    sp2C = (s32)&D_800E931C[D_800DE53C].a + 0x26D80;
    sp20 = 0;
    sp1C = 0;
    for (;;) {
        if (sp1C >= 3) {
            return;
        }
        sp14 = 0;
        for (;;) {
            if (sp14 >= 32) {
                break;
            }
            sp18 = 0;
            for (;;) {
                if (sp18 >= 48) {
                    break;
                }
                (*(s16 *)(((((sp1C * 3072) + (sp14 * 48)) + sp18) * 2) + sp2C)) = (*(u16 *)((sp20 * 2) + sp24)) | 1;
                (*(s16 *)((((((sp1C * 3072) + (sp14 * 48)) + sp18) * 2) + sp2C) + 3072)) = (*(u16 *)(((sp20 * 2) + sp24) + 96)) | 1;
                sp20++;
                sp18++;
            }
            sp20 = sp20 + 48;
            sp14++;
        }
        sp1C++;
    }
}
