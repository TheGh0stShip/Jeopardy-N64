#include "n64dk_lift.h"

s32 func_8000766C();                             /* extern */
M2C_UNK func_800076FC();                     /* extern */

s32 func_80007784(s32 arg0) {
    func_800076FC(8);
    return func_8000766C(arg0);
}
