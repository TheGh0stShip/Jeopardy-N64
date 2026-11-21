#include "n64dk_lift.h"

s32 __osProbeTLB();                              /* extern */

s32 func_80043338(u32 arg0) {
    if ((arg0 >= 0x80000000U) && (arg0 < 0xA0000000U)) {
        return arg0 & 0x1FFFFFFF;
    }
    if ((arg0 >= 0xA0000000U) && (arg0 < 0xC0000000U)) {
        return arg0 & 0x1FFFFFFF;
    }
    return __osProbeTLB(arg0);
}
