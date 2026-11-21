#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80058858;
extern s32 D_800599F0[][7];
extern s32 D_80059A98[][6];
extern s32 D_80059B10[][6];
extern s32 D_80059BA4;
extern s32 D_80059BA8;
extern s32 D_800E36A8;
s32 func_800328C8();
s32 func_800359E8();
s32 func_8003FDF8();

struct n64dk_r12 func_80033324(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;

    sp2C = 0;
    sp30 = 0;
    if ((u32)D_80059BA8 < 31) {
        sp10.w[1] = 1;
        sp10.w[0] = 0;
        return sp10;
    }
    for (;;) {
        if (sp2C != 0) {
            break;
        }
        sp34 = 5;
        sp20 = func_8003FDF8() % 30;
        sp24 = (u32)sp20 / 6;
        sp28 = sp20 - (sp24 * 6);
        if (D_80059B10[sp24][sp28] == 0) {
            D_80059B10[sp24][sp28] = D_80059A98[sp24][sp28];
            ((struct gd_48_s32 *)(*(s32 *)((((sp24 * 6) + sp28) * 4) + ((s32)&D_800E36A8))))->v = D_800599F0[D_80058858][D_80059B10[sp24][sp28]];
            sp2C++;
            D_80059BA4++;
        }
    }
    if (D_80059BA4 == 30) {
        func_800328C8();
        func_800359E8(21);
        sp10.w[1] = 0;
    } else {
        sp10.w[1] = 1;
    }
    sp10.w[0] = 1;
    return sp10;
}
