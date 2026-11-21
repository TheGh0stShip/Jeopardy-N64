#include "n64dk_lift.h"

u32 func_80039EC0();                             /* extern */

s32 func_80039F44(s32 arg0) {
    s32 temp;
    temp = (~arg0 & 3) * 8;
    return func_80039EC0(arg0 & ~3) >> temp & 0xFF;
}
