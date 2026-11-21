#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80056064;
extern s32 D_8005607C;
extern s32 D_800560AC;
extern s32 D_800560B8;
extern s32 D_800560C4;
extern s32 D_800560D0;
extern s32 D_800560DC;
extern s32 D_800560F4;
extern s32 D_800580E8;
extern s32 D_80058120;
extern s32 D_80058858;
extern s32 D_80059610;
extern s32 D_8005998C;
extern s32 D_80059BA4;
extern s32 D_800E3A54;
extern s32 D_800E3A58;
extern s32 D_800E90D0;
s32 func_800192F8();
s32 func_8002807C();
s32 func_80028190();
s32 func_800359E8();
s32 func_80035E48();
s32 func_8003FDF8();

struct n64dk_r12 func_80019AA0(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            break;
        case 23:
            sp10.w[1] = 2;
            sp10.w[0] = -1;
            return sp10;
            break;
        case 24:
            for (sp24 = 0;;) {
                if ((u32)sp24 >= 3) {
                    break;
                }
                (*(s32 *)((sp24 * 4) + ((s32)&D_800E3A58))) = 0;
                sp24++;
            }
            for (sp24 = 0;;) {
                if ((u32)sp24 >= 3) {
                    break;
                }
                if ((u32)D_80059BA4 >= 3) {
                    if ((*(s32 *)((sp24 * 4) + ((s32)&D_800580E8))) == 0) {
                        if ((*(s32 *)((sp24 * 4) + ((s32)&D_80058120))) < (*(s32 *)((D_80058858 * 4) + ((s32)&D_800560AC)))) {
                            (*(s32 *)((sp24 * 4) + ((s32)&D_80056064))) = 2;
                        } else {
                            (*(s32 *)((sp24 * 4) + ((s32)&D_80056064))) = D_80059610;
                        }
                        sp28 = func_8003FDF8() % 100;
                        if ((u32)sp28 > (u32)(*(s32 *)(((*(s32 *)((sp24 * 4) + ((s32)&D_80056064))) * 4) + ((s32)&D_800560C4)))) {
                            func_800192F8(((*(s32 *)(((*(s32 *)((sp24 * 4) + ((s32)&D_80056064))) * 4) + ((s32)&D_800560DC))) + (func_8003FDF8() % (*(s32 *)(((*(s32 *)((sp24 * 4) + ((s32)&D_80056064))) * 4) + ((s32)&D_800560D0))))), (sp24 + 1), 10);
                        }
                    }
                }
                sp24++;
            }
            sp10.w[1] = 2;
            sp10.w[0] = -1;
            return sp10;
            break;
        case 11:
            if (((u32)sp20 >> 16) != 0) {
                if ((u32)((u32)sp20 >> 16) < 4) {
                    if (((u32)sp20 >> 16) != 0) {
                        (*(s32 *)((((u32)sp20 >> 16) * 4) + ((s32)&D_800E3A54))) = 1;
                    }
                }
            }
            break;
        case 49:
            if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) != 0) {
                sp24 = 0;
                for (;;) {
                    if ((u32)sp24 >= 3) {
                        break;
                    }
                    (*(s32 *)((sp24 * 4) + ((s32)&D_800E3A58))) = 0;
                    sp24++;
                }
            }
            if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3A58))) != 0) {
                sp24 = 0;
                for (;;) {
                    if ((u32)sp24 >= 3) {
                        break;
                    }
                    (*(s32 *)((sp24 * 4) + ((s32)&D_800E3A58))) = 0;
                    sp24++;
                }
                if (D_800560F4 == 0) {
                    sp28 = func_8003FDF8() % 100;
                    if ((u32)sp28 < (u32)(*(s32 *)(((*(s32 *)((D_8005998C * 4) + ((s32)&D_80056064))) * 4) + ((s32)&D_800560B8)))) {
                        func_80028190();
                        D_8005607C = (s32)&D_800E90D0;
                    } else {
                        D_800560F4 = 1;
                        D_8005607C = func_8002807C();
                    }
                } else {
                    D_8005607C = (s32)&D_800E90D0;
                }
            }
        case 25:
            for (sp24 = 0;;) {
                if ((u32)sp24 >= 3) {
                    break;
                }
                if ((*(s32 *)((sp24 * 4) + ((s32)&D_800580E8))) != 0) {
                    break;
                }
                sp24++;
            }
            if (sp24 == 3) {
                func_800359E8(0x80000006);
            }
        default:
            break;
        case 6:
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
