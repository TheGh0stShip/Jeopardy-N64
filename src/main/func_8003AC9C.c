#include "n64dk_lift.h"

s32 func_80039E20();                                /* extern */
M2C_UNK func_80039E58();                         /* extern */
s32 func_8003A89C();  /* extern */

s32 func_8003AC9C(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    s32 temp_s0_16;
    s32 temp_s0_23;

    temp_s0_16 = func_80039E20();
    temp_s0_23 = func_8003A89C(0x707, arg0, arg1, arg2);
    func_80039E58(temp_s0_16);
    return temp_s0_23;
}
