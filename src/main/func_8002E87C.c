#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_800560F8;
extern s32 D_80058844;
extern s32 D_80058848;
extern s32 D_80058D58;
extern s32 D_80058D88;
extern s32 D_80059998;
extern s32 D_800DF030;
extern s32 D_800DF031;
s32 func_80005EA4();
s32 func_800278B8();
s32 func_800293F8();
s32 func_800295BC();
s32 func_8002E780();
s32 func_8002FBB0();
s32 func_80035138();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_8002E87C(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp20 & 0xFFFF)) {
        case 8:
            if (D_800560F8 == 4) {
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
            }
            func_800293F8();
            sp28 = 0;
            for (;;) {
                if ((u32)sp28 >= 10) {
                    break;
                }
                (*(s8 *)(sp28 + ((s32)&D_800DF030))) = 0;
                sp28++;
            }
            func_80035138();
            D_800560F8 = 4;
            D_80058D88 = 0;
            (*(s8 *)(D_80058D88 + ((s32)&D_800DF030))) = 95;
            (*(s8 *)(D_80058D88 + ((s32)&D_800DF031))) = 0;
            D_80058844 = 0;
            D_80058848 = 0;
            D_80059998 = 22;
            break;
        case 6:
            sp24 = func_8002FBB0(((u32)sp20 >> 16));
            switch (sp24) {
            case 99:
                D_80058D58 = func_8002E780(((s32)&D_800DF030));
                if (func_800295BC() != 0) {
                    func_80005EA4(7);
                    func_800359E8(12);
                    D_800560F8 = 99;
                    sp10.w[1] = 0;
                    sp10.w[0] = 0;
                    return sp10;
                } else {
                    func_800278B8();
                }
                break;
            case 1:
                break;
            default:
                break;
            }
            break;
        case 11:
            sp10.w[1] = 2;
            sp10.w[0] = -1;
            return sp10;
            break;
        default:
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
