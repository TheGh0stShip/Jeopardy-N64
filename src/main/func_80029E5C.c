#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_800560F8;
s32 func_800192F8();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_80029E5C(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp20 & 0xFFFF)) {
        case 8:
            func_800192F8(4, 0, 1);
            D_800560F8 = 2;
            break;
        case 6:
            D_800560F8 = 99;
            func_800359E8(5);
            sp10.w[1] = 0;
            sp10.w[0] = 0;
            return sp10;
            break;
        case 11:
            if (((u32)sp20 >> 16) != 0) {
                break;
            }
            D_800560F8 = 99;
            func_800359E8(5);
            sp10.w[1] = 0;
            sp10.w[0] = 0;
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
