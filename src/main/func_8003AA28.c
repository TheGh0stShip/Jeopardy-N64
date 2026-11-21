#include "n64dk_lift.h"

s32 func_80039E20();                                /* extern */
M2C_UNK func_80039E58();                         /* extern */
M2C_UNK func_8003A228();           /* extern */
s32 func_8003A89C();  /* extern */
s32 func_8003A93C();                             /* extern */

s32 func_8003AA28(s32 arg0, M2C_UNK arg1) {
    s32 temp_s0_28;
    s32 temp_s2_15;
    s32 temp_v0_14;

    temp_s2_15 = func_80039E20();
    temp_v0_14 = func_8003A93C(arg0);
    func_8003A228(0xB1FF0000, arg0, temp_v0_14);
    temp_s0_28 = func_8003A89C(0x303, temp_v0_14, arg1, 0);
    func_80039E58(temp_s2_15);
    return temp_s0_28;
}
