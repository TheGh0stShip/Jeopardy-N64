#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_8004DFE8;
extern s32 D_800560F8;
extern s32 D_80059998;
extern s32 D_80059C3C;
extern s32 D_80059C40;
extern s32 D_800D7918;
extern s32 D_800E3A58;
s32 func_80008C40();
s32 func_800192F8();
s32 func_80034C20();
s32 func_80035138();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_800340C4(s32 arg1) {
    s32 pad0[2];
    struct n64dk_r12 sp18;
    s32 sp28;
    s32 pad1;
    s32 pad2;
    s32 sp34;

    for (;;) {
        if (((sp28 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp28 & 0xFFFF)) {
        case 8:
            if (D_80059C40 == 1) {
                sp18.w[1] = 0;
                sp18.w[0] = 0;
                return sp18;
            }
            D_80059C40 = 1;
            D_8004DFE8 = 0;
            func_800359E8(23);
            func_80035138();
            if (D_80059998 == 15) {
                func_800359E8(24);
                D_800D7918 = 2;
                func_800192F8(5, 0, 1);
                D_800560F8 = 18;
                sp34 = 0;
                for (;;) {
                    if ((u32)sp34 >= 3) {
                        break;
                    }
                    (*(s32 *)((sp34 * 4) + ((s32)&D_800E3A58))) = 0;
                    sp34++;
                }
                func_80008C40(2);
                D_80059C3C = 1;
            } else {
                D_800D7918 = 1;
                func_800192F8(10, 0, 1);
                D_800560F8 = 18;
                D_80059C3C = 1;
            }
            break;
        case 6:
            break;
        case 11:
            if (((u32)sp28 >> 16) != 0) {
                break;
            }
            if (D_800D7918 == 1) {
                func_800359E8(24);
                D_800D7918 = 2;
                func_800192F8(15, 0, 1);
                sp34 = 0;
                for (;;) {
                    if ((u32)sp34 >= 3) {
                        break;
                    }
                    (*(s32 *)((sp34 * 4) + ((s32)&D_800E3A58))) = 0;
                    sp34++;
                }
                func_80008C40(2);
            } else {
                if (D_800D7918 == 2) {
                    if (D_8004DFE8 != 0) {
                        sp18.w[1] = 0;
                        sp18.w[0] = 0;
                        return sp18;
                    }
                    func_80008C40(0);
                    D_800560F8 = 99;
                    D_80059C3C = 2;
                    func_80035138();
                    func_80034C20();
                    func_800359E8(17);
                    D_80059C40 = 0;
                    sp18.w[1] = 0;
                    sp18.w[0] = 0;
                    return sp18;
                }
            }
            break;
        case 15:
            D_80059C40 = 0;
            sp18.w[1] = 0;
            sp18.w[0] = 0;
            return sp18;
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
