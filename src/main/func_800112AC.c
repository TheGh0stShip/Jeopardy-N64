#include "n64dk_lift.h"

struct gd_44_s32 { u8 pad[0x44]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
struct n64dk_o800E931C { u8 pad[0x4]; struct { u8 b[0x36DFC]; } a; };
extern struct n64dk_o800E931C D_800E931C[];
extern s32 D_800D7D20;
extern s32 D_800DE53C;
extern s32 D_800E9320;
s32 func_80043338();
s32 func_8008AC6C();

void func_800112AC(s32 arg0) {
    s32 sp10;
    s32 pad0;
    s32 pad1[6];
    s32 pad2;
    s32 sp34;

    sp34 = 0x2000000;
    sp10 = func_80043338(((s32)&D_800E931C[D_800DE53C].a + 0x26D80));
    sp10 = sp10 - func_80043338(((D_800DE53C * 0x36E00) + ((s32)&D_800E9320)));
    ((struct gd_44_s32 *)(*(s32 *)((struct gd_6C_s32 *)arg0)->v))->v = sp34 + sp10;
    if (D_800D7D20 == 0) {
        D_800D7D20 = func_8008AC6C();
    }
}
