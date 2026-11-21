#include "n64dk_lift.h"

s32 func_8003AF14();                                /* extern */
M2C_UNK func_8003AF20();                         /* extern */

s32 func_80039E20(void) {
    s32 temp_v0_7;

    temp_v0_7 = func_8003AF14();
    func_8003AF20(temp_v0_7 & ~1);
    return temp_v0_7 & 1;
}
