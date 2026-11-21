#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80058D7C;
extern s32 D_80058D80;
extern s32 D_80058D88;
s32 func_80027980();

struct n64dk_r12 func_80027CD0(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 pad0;
    s32 sp24;

    if (D_80058D88 == 0) {
        D_80058D80 = (s32)&D_80058D7C;
    } else {
        sp24 = func_80027980();
        if (sp24 != 0) {
            D_80058D80 = sp24;
        }
    }
    sp10.w[1] = 0;
    sp10.w[0] = 0;
    return sp10;
}
