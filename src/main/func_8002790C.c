#include "n64dk_lift.h"


s32 func_8002790C(s32 arg0) {
    s32 sp0;

    sp0 = arg0;
    for (;;) {
        if ((*(u8 *)sp0) == 0) {
            break;
        }
        sp0++;
    }
    sp0 = sp0 + 2;
    return sp0;
}
