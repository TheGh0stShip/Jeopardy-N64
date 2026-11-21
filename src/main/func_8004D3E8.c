#include "n64dk_lift.h"

s32 __osSiDeviceBusy();                             /* extern */

s32 func_8004D3E8(s32 arg0, s32 arg1) {
    if (__osSiDeviceBusy() != 0) {
        return -1;
    }
    *(s32 *)(arg0 | 0xA0000000) = arg1;
    return 0;
}
