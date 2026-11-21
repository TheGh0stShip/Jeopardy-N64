#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80056100;
extern s32 D_80056104;
extern s32 D_80056108;
extern s32 D_8005610C;
extern s32 D_800DE630;
extern s32 D_800E3764;
extern s32 D_800E3768;
extern s32 D_800E6E30;
s32 func_800359E8();

struct n64dk_r12 func_800297FC(s32 arg1) {
    struct n64dk_r12 sp10;

    if (D_80056104 > 0) {
        D_80056104 = D_80056104 + D_800E6E30;
    }
    if (D_80056104 < 0) {
        D_80056104 = 0;
    }
    if (D_8005610C > 0) {
        D_8005610C = D_8005610C + D_800DE630;
    }
    if (D_8005610C < 0) {
        D_8005610C = 0;
    }
    if (D_80056100 > 0) {
        D_80056100 = D_80056100 + D_800E3764;
    }
    if (D_80056100 < 0) {
        D_80056100 = 0;
    }
    D_80056108 = D_80056108 + D_800E3768;
    if (D_80056108 < 0) {
        func_800359E8(29);
        D_80056108 = 0;
        sp10.w[1] = 0;
        sp10.w[0] = 0;
        return sp10;
    }
    sp10.w[1] = 1;
    sp10.w[0] = 0;
    return sp10;
}
