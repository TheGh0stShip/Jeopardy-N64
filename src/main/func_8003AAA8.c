#include "n64dk_lift.h"

s32 func_80039E20();                                /* extern */
M2C_UNK func_80039E58();                         /* extern */
s32 func_8003A89C();  /* extern */

s32 func_8003AAA8(s32 arg0) {
    s32 temp_s0_19;
    s32 temp_s1_12;

    temp_s1_12 = func_80039E20();
    temp_s0_19 = func_8003A89C(0x404, arg0, 0, 0);
    func_80039E58(temp_s1_12);
    return temp_s0_19;
}
