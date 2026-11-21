#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80058120;
extern s32 D_80058124;
extern s32 D_80058128;
extern s32 D_80059990;
extern s32 D_80059998;
extern s32 D_80059B10[][6];
extern s32 D_80059BA0;
extern s32 D_80059BA4;
extern s32 D_80059C3C;
s32 func_800184E4();
s32 func_800347B4();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_800344FC(s32 arg1) {
    s32 pad0[2];
    struct n64dk_r12 sp18;
    s32 sp28;
    s32 sp2C;
    s32 sp30;

    for (;;) {
        if (((sp28 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp28 & 0xFFFF)) {
        case 8:
            break;
        case 6:
            if (D_80059BA0 != 0) {
                sp2C = func_800347B4(((u32)sp28 >> 16));
                switch ((u32)sp2C) {
                case 1:
                    D_80059990 = 3;
                    func_800359E8(14);
                    break;
                case 2:
                    D_80059C3C = 0;
                    D_80059998 = 25;
                    func_800359E8(10);
                    break;
                case 3:
                    D_80059BA4 = 0;
                    D_80058120 = 100;
                    D_80058124 = 300;
                    D_80058128 = 200;
                    func_800184E4();
                    D_80059998 = 16;
                    func_800359E8(5);
                    sp30 = 0;
                    for (;;) {
                        if ((u32)sp30 >= 30) {
                            break;
                        }
                        D_80059B10[(u32)sp30 / 6][(u32)sp30 % 6] = 0;
                        sp30++;
                    }
                    break;
                }
            }
            break;
        case 11:
            break;
        default:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = 6;
    return sp18;
}
