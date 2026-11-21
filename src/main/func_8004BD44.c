#include "n64dk_lift.h"

s32 __osSpDeviceBusy();                             /* extern */
M2C_UNK func_8004C4E8();                     /* extern */

void func_8004BD44(s32 arg0) {
    if (__osSpDeviceBusy() != 0) {
        do {

        } while (__osSpDeviceBusy() != 0);
    }
    func_8004C4E8(0x125);
}
