#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_14_s32 { u8 pad[0x14]; s32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_60_s16 { u8 pad[0x60]; s16 v; };
struct gd_64_s32 { u8 pad[0x64]; s32 v; };
struct n64dk_a800E3780 { s32 m0; u8 pad4[0x10]; };
extern struct n64dk_a800E3780 D_800E3780[];
extern f32 D_8000053C;
extern s32 func_80006CA0;
extern s32 func_800073F8;
extern s32 D_8009D0F0;
extern s32 D_800E3364;
extern s32 D_800E35F8;
extern s32 D_800E3770;
extern s32 D_800E3774;
extern s32 D_800E3784;
extern s32 D_800E3A40;
extern s8 D_800E3AF8;
extern s32 D_800E6B48;
extern s32 D_800E6B50;
extern s32 D_800E6B60;
extern s32 D_800E6D10;
extern s32 D_800E6D28;
extern s32 D_800E6D48;
extern s32 D_800E6D60;
extern s32 D_800E6D80;
extern s32 D_800E6E7C;
extern s32 D_800E8F18;
extern s32 D_80156EE8;
s32 func_8003BCE8();
s32 func_8003D4D8();
s32 func_8003D534();
s32 func_8003D5A8();
s32 func_80041668();
s32 func_80047B98();
s32 func_80048438();

void func_800067B0(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp18;
    f32 sp1C;

    D_800E3AF8 = 0;
    ((struct gd_10_s32 *)arg0)->v = (s32)&func_800073F8;
    ((struct gd_18_s32 *)arg0)->v = func_8003BCE8((*(s32 *)arg2));
    sp1C = (((f32)((f64)((u32)((struct gd_4_s32 *)arg2)->v))) * ((f32)((struct gd_18_s32 *)arg0)->v)) / 6e+01f;
    D_800E6E7C = (s32)sp1C;
    if (((f32)((f64)((u32)D_800E6E7C))) < sp1C) {
        D_800E6E7C++;
    }
    if ((D_800E6E7C & 15) != 0) {
        D_800E6E7C = (D_800E6E7C & -16) + 16;
    }
    D_800E3364 = D_800E6E7C - 16;
    D_800E35F8 = D_800E6E7C + 96;
    func_8003D534(((s32)&D_800E6D80), arg0);
    D_800E3774 = 0;
    D_800E3770 = 0;
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 35) {
            break;
        }
        func_8003D4D8(((sp18 * 20) + ((s32)&D_800E3784)), ((sp18 * 20) + ((s32)&D_800E3770)));
        D_800E3780[sp18].m0 = func_8003D5A8(0, 0, ((struct gd_14_s32 *)arg0)->v, 1, 2048);
        sp18++;
    }
    D_800E3780[sp18].m0 = func_8003D5A8(0, 0, ((struct gd_14_s32 *)arg0)->v, 1, 2048);
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 2) {
            break;
        }
        (*(s32 *)((sp18 * 4) + ((s32)&D_800E6B48))) = func_8003D5A8(0, 0, ((struct gd_14_s32 *)arg0)->v, 1, (((struct gd_8_s32 *)arg2)->v * 8));
        sp18++;
    }
    D_800E8F18 = ((struct gd_8_s32 *)arg2)->v;
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 3) {
            break;
        }
        (*(s32 *)((sp18 * 4) + ((s32)&D_800E6B50))) = func_8003D5A8(0, 0, ((struct gd_14_s32 *)arg0)->v, 1, 128);
        ((struct gd_60_s16 *)(*(s32 *)((sp18 * 4) + ((s32)&D_800E6B50))))->v = 2;
        ((struct gd_64_s32 *)(*(s32 *)((sp18 * 4) + ((s32)&D_800E6B50))))->v = *(s32 *)((sp18 * 4) + ((s32)&D_800E6B50));
        (*(s32 *)(*(s32 *)((sp18 * 4) + ((s32)&D_800E6B50)))) = func_8003D5A8(0, 0, ((struct gd_14_s32 *)arg0)->v, 1, (D_800E35F8 * 4));
        sp18++;
    }
    func_80048438(((s32)&D_800E6D48), ((s32)&D_800E6D60), 8);
    func_80048438(((s32)&D_800E6D10), ((s32)&D_800E6D28), 8);
    func_80048438(((s32)&D_800E3A40), ((s32)&D_80156EE8), 32);
    func_80041668(((s32)&D_800E6B60), 3, ((s32)&func_80006CA0), 0, ((s32)&D_8009D0F0), arg1);
    func_80047B98(((s32)&D_800E6B60));
}
