#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_800560F8;
extern s32 D_80059998;
s32 func_8002DCF4();
s32 func_80034C20();
s32 func_80035138();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_800308AC(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            func_80034C20();
            func_80035138();
            break;
        case 6:
            if (D_80059998 == 38) {
                D_80059998 = 29;
                func_800359E8(5);
            } else {
                if (D_800560F8 == 21) {
                    D_80059998 = 43;
                    func_8002DCF4(24, 3);
                } else {
                    func_800359E8(33);
                }
            }
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
