#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80056110;
s32 func_800359E8();

struct n64dk_r12 func_80016468(s32 arg1) {
    struct n64dk_r12 sp10;

    D_80056110 = D_80056110 + 5;
    if (D_80056110 >= 256) {
        func_800359E8(34);
        D_80056110 = 255;
        sp10.w[1] = 0;
        sp10.w[0] = 0;
        return sp10;
    }
    sp10.w[1] = 1;
    sp10.w[0] = 0;
    return sp10;
}
