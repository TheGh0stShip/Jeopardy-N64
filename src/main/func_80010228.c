#include "n64dk_lift.h"

struct n64dk_o800E931C { u8 pad[0x4]; struct { u8 b[0x36DFC]; } a; };
extern struct n64dk_o800E931C D_800E931C[];
extern s32 D_800DE53C;
extern s32 D_800E9320;
s32 func_80043338();

void func_80010228(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;

    sp2C = 0x2000000;
    sp10 = func_80043338(((s32)&D_800E931C[D_800DE53C].a + 0x26D80));
    sp10 = sp10 - func_80043338(((D_800DE53C * 0x36E00) + ((s32)&D_800E9320)));
    sp24 = arg0;
    sp28 = (s32)&D_800E931C[D_800DE53C].a + 0x26D80;
    sp20 = 0;
    sp1C = 0;
    for (;;) {
        if (sp1C >= 2) {
            break;
        }
        sp14 = 0;
        for (;;) {
            if (sp14 >= 32) {
                break;
            }
            sp18 = 0;
            for (;;) {
                if (sp18 >= 64) {
                    break;
                }
                (*(s16 *)(((((sp1C * 3584) + (sp14 * 64)) + sp18) * 2) + sp28)) = (*(u16 *)((sp20 * 2) + sp24)) | 1;
                sp20++;
                sp18++;
            }
            for (sp18 = 0;;) {
                if (sp18 >= 48) {
                    break;
                }
                (*(s16 *)((((((sp1C * 3584) + 2048) + (sp14 * 48)) + sp18) * 2) + sp28)) = (*(u16 *)((sp20 * 2) + sp24)) | 1;
                sp20++;
                sp18++;
            }
            sp14++;
        }
        sp1C++;
    }
    for (sp14 = 0;;) {
        if (sp14 >= 16) {
            return;
        }
        sp18 = 0;
        for (;;) {
            if (sp18 >= 64) {
                break;
            }
            (*(s16 *)(((((sp14 * 64) + sp18) * 2) + sp28) + 0x3800)) = (*(u16 *)((sp20 * 2) + sp24)) | 1;
            sp20++;
            sp18++;
        }
        for (sp18 = 0;;) {
            if (sp18 >= 48) {
                break;
            }
            (*(s16 *)(((((sp14 * 48) + sp18) * 2) + sp28) + 0x4000)) = (*(u16 *)((sp20 * 2) + sp24)) | 1;
            sp20++;
            sp18++;
        }
        sp14++;
    }
}
