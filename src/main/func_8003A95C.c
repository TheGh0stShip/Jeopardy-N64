#include "n64dk_lift.h"

s32 func_80039E20();                                /* extern */
M2C_UNK func_80039E58();                         /* extern */
s32 func_8003A89C(); /* extern */

s32 func_8003A95C(void) {
    s32 temp_s0_10;
    s32 temp_s0_17;

    temp_s0_10 = func_80039E20();
    temp_s0_17 = func_8003A89C(0x101, 0, 0, 0);
    func_80039E58(temp_s0_10);
    return temp_s0_17;
}
