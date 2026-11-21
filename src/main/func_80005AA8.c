#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_g0_8_4_s32 { struct { u8 a[0x4]; s32 v; } m[1]; };
extern s32 D_80098F1C;
extern s32 D_800D7690;
extern s32 D_800E0DCC;
extern s32 D_800E8EF8;
s32 func_8003E2E8();
s32 func_8003E318();
s32 func_8003E8B4();
s32 func_80044548();

void func_80005AA8(s32 arg0, s32 arg1) {
    s32 sp10;

    sp10 = D_800E0DCC + ((struct n64dk_g0_8_4_s32 *)D_800E0DCC)->m[arg0].v;
    func_8003E8B4((*(s32 *)((arg1 * 4) + ((s32)&D_80098F1C))), sp10);
    func_80044548((*(s32 *)((arg1 * 4) + ((s32)&D_800E8EF8))), (*(s32 *)((arg1 * 4) + ((s32)&D_80098F1C))));
    func_8003E318((*(s32 *)((arg1 * 4) + ((s32)&D_800E8EF8))), ((struct gd_4_s32 *)D_800D7690)->v);
    func_8003E2E8((*(s32 *)((arg1 * 4) + ((s32)&D_800E8EF8))));
}
