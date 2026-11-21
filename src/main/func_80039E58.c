#include "n64dk_lift.h"

s32 func_8003AF14();                                /* extern */
M2C_UNK func_8003AF20();                         /* extern */

void func_80039E58(s32 arg0) {
    func_8003AF20(func_8003AF14() | arg0);
}
