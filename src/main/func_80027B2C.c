#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80058DCC;
extern s32 D_80058DD0;
extern s32 D_80058DD4;
s32 func_8000640C();
s32 func_8000656C();
s32 func_800359E8();

struct n64dk_r12 func_80027B2C(s32 arg1) {
    struct n64dk_r12 sp10;

    if (D_80058DCC != 0) {
        D_80058DCC = D_80058DCC - D_80058DD0;
        if (D_80058DCC < 0) {
            D_80058DCC = 0;
        }
        func_8000656C(D_80058DD4, D_80058DCC);
    } else {
        func_800359E8(51);
        func_8000640C(D_80058DD4);
        sp10.w[1] = 0;
        sp10.w[0] = 0;
        return sp10;
    }
    sp10.w[1] = 1;
    sp10.w[0] = 0;
    return sp10;
}
