#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 func_80032FCC;
extern s32 func_80033324;
extern s32 func_80033994;
extern s32 D_80050704;
extern s32 D_80059BA8;
extern s32 D_800D7670;
extern s32 D_800D7674;
extern s32 D_800DDFE8;
extern s32 D_800DE018;
extern s32 D_800DE058;
extern s32 D_800DEFD8;
extern s32 D_800E5CB8;
extern s32 D_B01A593C;
extern s32 D_B0219AED;
extern s32 D_B022E2A2;
extern s32 D_B02301AC;
s32 func_80007784();
s32 func_800077D8();
s32 func_8003362C();
s32 func_80033728();
s32 func_8003393C();
s32 func_80035760();
s32 func_800359E8();
s32 func_80035E48();
s32 func_80036448();
s32 func_8003FDF8();

struct n64dk_r12 func_80033DD4(s32 arg1) {
    s32 pad0[2];
    struct n64dk_r12 sp18;
    s32 pad1;
    s32 sp2C;
    s32 pad2[2];
    s32 sp38;
    s32 pad3;
    s32 pad4;
    s32 sp44;
    s32 sp48;

    sp44 = 0;
    sp48 = 0;
    for (;;) {
        if (((sp2C = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp2C & 0xFFFF) {
        case 8:
            break;
        case 18:
            func_800077D8();
            D_800DEFD8 = D_800D7670;
            D_800D7674 = func_80007784((((s32)&D_B0219AED) - ((s32)&D_B01A593C)));
            func_80036448(((s32)&D_B022E2A2), D_800D7674, ((((s32)&D_B02301AC) - ((s32)&D_B022E2A2)) + 1));
            sp48 = func_8003FDF8() % 54;
            D_800DE058 = sp48;
            D_800E5CB8 = func_8003362C((func_8003393C(sp48) - 2)) + 2;
            D_800DE018 = func_80033728(D_800E5CB8);
            func_80036448(((s32)&D_B01A593C), D_800D7674, ((((s32)&D_B0219AED) - ((s32)&D_B01A593C)) + 1));
            sp38 = 0;
            for (;;) {
                if ((u32)sp38 >= 13) {
                    break;
                }
                (*(s32 *)((sp38 * 4) + ((s32)&D_800DDFE8))) = 999;
                sp38++;
            }
            D_80059BA8 = 0;
            D_80050704 = 2;
            func_800359E8(19);
            func_80035760(((s32)&func_80033994), 0x7000000);
            break;
        case 19:
            func_80035760(((s32)&func_80032FCC), 0x7000000);
            break;
        case 20:
            func_80035760(((s32)&func_80033324), 0x7000000);
            break;
        case 6:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
