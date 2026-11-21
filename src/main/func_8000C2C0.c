#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
s32 func_8000C338();

struct n64dk_r12 func_8000C2C0(s32 arg1) {
    s32 pad0[2];
    struct n64dk_r12 sp18;
    s8 pad1;

    sp18.w[1] = 1;
    sp18.w[0] = 0;
    func_8000C338();
    return sp18;
}
