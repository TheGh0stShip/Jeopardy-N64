#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_800017AC;
extern s32 func_80027CD0;
extern s32 D_800560F8;
extern s32 D_80058844;
extern s32 D_80058848;
extern u64 D_80058850;
extern s32 D_80058854;
extern s32 D_80058858;
extern s32 D_80058D7C;
extern s32 D_80058D80;
extern s32 D_80058D88;
extern s32 D_80058F00;
extern s32 D_80059998;
extern s32 D_800D7918;
extern s32 D_800DE598;
extern s32 D_800DE5D8;
extern s32 D_800DF030;
extern s32 D_800E1004;
extern s32 D_800E3C00;
extern s32 D_800E90D0;
s32 func_80006158();
s32 func_80007F38();
s32 func_800192F8();
s32 func_80024AE4();
s32 func_80027DE0();
s32 func_8002807C();
s32 func_80028190();
s32 func_80028584();
s32 func_8002865C();
s32 func_80028720();
s32 func_800288F8();
s32 func_8002DB04();
s32 func_8002DDBC();
s32 func_8002DEE8();
s32 func_8002E030();
s32 func_8002EF00();
s32 func_80035138();
s32 func_80035760();
s32 func_800359E8();
s32 func_80035E48();
s32 func_800494AC();

struct n64dk_r12 func_8002E1F0(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 pad0;
    s32 sp30;
    s32 sp34;
    s32 sp38;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp20 & 0xFFFF)) {
        case 8:
            if (D_800560F8 == 1) {
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
            }
            func_800359E8(49);
            func_80035138();
            if (D_80058858 == 2) {
                D_800E3C00 = func_80006158(25);
            }
            D_800D7918 = 1;
            func_800192F8(60, 0, 1);
            D_800560F8 = 1;
            D_80058848 = 0;
            D_80058844 = 0;
            D_80058D88 = 0;
            D_80058D80 = (s32)&D_80058D7C;
            (*(s8 *)(D_80058D88 + ((s32)&D_800DF030))) = 95;
            func_80028190();
            sp30 = func_80024AE4();
            if (sp30 != 3) {
                sp30 = 4;
            } else {
            }
            sp38 = func_80027DE0(D_80058854, (*(s32 *)&D_80058850));
            sp28 = func_8002865C(sp38);
            if ((u32)sp28 >= 2) {
                func_80028720(sp38, ((D_800DE598 * 31) + ((s32)&D_800E90D0)));
            }
            if ((u32)sp28 >= 3) {
                func_800288F8(sp38, ((D_800DE598 * 31) + ((s32)&D_800E90D0)));
            }
            if (D_80058F00 == 0) {
                func_80028584();
            }
            func_800494AC(((s32)&D_800DE5D8), ((s32)&D_800017AC), D_80058850);
            func_80007F38(((s32)&D_800DE5D8));
            sp28 = 0;
            for (;;) {
                if ((u32)sp28 >= (u32)D_800DE598) {
                    break;
                }
                func_80007F38(((sp28 * 31) + ((s32)&D_800E90D0)));
                sp28++;
            }
            sp34 = func_8002807C();
            func_80007F38(sp34);
            sp28 = 1;
            for (;;) {
                if ((u32)sp28 >= 80) {
                    break;
                }
                (*(s8 *)(sp28 + ((s32)&D_800DF030))) = 0;
                sp28++;
            }
            D_80059998 = 20;
            break;
        case 6:
            sp24 = func_8002EF00(((u32)sp20 >> 16));
            switch (sp24) {
            case 99:
                if ((u32)D_80058858 < 2) {
                    if (func_8002DB04() != 0) {
                        func_8002DDBC();
                    } else {
                        func_8002DEE8();
                    }
                } else {
                    func_8002E030();
                }
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
                break;
            case 1:
                if (D_80058F00 == 1) {
                    func_80035760(((s32)&func_80027CD0), 0x7000000);
                }
                break;
            default:
                break;
            }
            break;
        case 11:
            if (((u32)sp20 >> 16) == 0) {
                D_800E1004 = 45;
                if ((u32)D_80058858 < 2) {
                    if (func_8002DB04() != 0) {
                        func_8002DDBC();
                    } else {
                        func_8002DEE8();
                    }
                } else {
                    func_8002E030();
                }
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
            }
            break;
        default:
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
