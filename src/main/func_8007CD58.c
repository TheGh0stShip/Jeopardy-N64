#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_108_s32 { u8 pad[0x108]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
extern s32 D_80157768;

void func_8007CD58(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;

    sp0 = (u32)((struct gd_108_s32 *)arg0)->v / (u32)((struct gd_C_s32 *)arg0)->v;
    sp4 = (u32)((struct gd_108_s32 *)arg0)->v % (u32)((struct gd_C_s32 *)arg0)->v;
    if (arg1 < 4) {
        sp8 = sp0 * 16;
        spC = sp4 * 16;
        if (arg1 >= 2) {
            sp8 = sp8 + 8;
        }
        if ((arg1 % 2) != 0) {
            spC = spC + 8;
        }
        sp18 = *(s32 *)((struct gd_260_s32 *)arg0)->v;
        sp10 = ((struct gd_C_s32 *)arg0)->v * 16;
    } else {
        if (arg1 == 5) {
            sp18 = ((struct gd_4_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
            sp10 = ((struct gd_C_s32 *)arg0)->v * 8;
            sp8 = sp0 * 8;
            spC = sp4 * 8;
        } else {
            sp18 = ((struct gd_8_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
            sp10 = ((struct gd_C_s32 *)arg0)->v * 8;
            sp8 = sp0 * 8;
            spC = sp4 * 8;
        }
    }
    sp1C = arg0 + 340;
    sp20 = (s32)&D_80157768;
    sp18 = sp18 + ((sp8 * sp10) + spC);
    sp14 = 0;
    for (;;) {
        if (sp14 >= 4) {
            return;
        }
        (*(s8 *)sp18) = *(u8 *)((*(s16 *)sp1C) + sp20);
        (*(s8 *)(sp18 + 1)) = *(u8 *)((*(s16 *)(sp1C + 2)) + sp20);
        (*(s8 *)(sp18 + 2)) = *(u8 *)((*(s16 *)(sp1C + 4)) + sp20);
        (*(s8 *)(sp18 + 3)) = *(u8 *)((*(s16 *)(sp1C + 6)) + sp20);
        (*(s8 *)(sp18 + 4)) = *(u8 *)((*(s16 *)(sp1C + 8)) + sp20);
        (*(s8 *)(sp18 + 5)) = *(u8 *)((*(s16 *)(sp1C + 10)) + sp20);
        (*(s8 *)(sp18 + 6)) = *(u8 *)((*(s16 *)(sp1C + 12)) + sp20);
        (*(s8 *)(sp18 + 7)) = *(u8 *)((*(s16 *)(sp1C + 14)) + sp20);
        sp18 = sp18 + sp10;
        (*(s8 *)sp18) = *(u8 *)((*(s16 *)(sp1C + 16)) + sp20);
        (*(s8 *)(sp18 + 1)) = *(u8 *)((*(s16 *)(sp1C + 18)) + sp20);
        (*(s8 *)(sp18 + 2)) = *(u8 *)((*(s16 *)(sp1C + 20)) + sp20);
        (*(s8 *)(sp18 + 3)) = *(u8 *)((*(s16 *)(sp1C + 22)) + sp20);
        (*(s8 *)(sp18 + 4)) = *(u8 *)((*(s16 *)(sp1C + 24)) + sp20);
        (*(s8 *)(sp18 + 5)) = *(u8 *)((*(s16 *)(sp1C + 26)) + sp20);
        (*(s8 *)(sp18 + 6)) = *(u8 *)((*(s16 *)(sp1C + 28)) + sp20);
        (*(s8 *)(sp18 + 7)) = *(u8 *)((*(s16 *)(sp1C + 30)) + sp20);
        sp14++;
        sp1C = sp1C + 32;
        sp18 = sp18 + sp10;
    }
}
