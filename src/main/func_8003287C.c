#include "n64dk_lift.h"

M2C_UNK func_80030410();                            /* extern */
s32 func_80035760();              /* extern */
extern s32 D_800DE5D4;
extern M2C_UNK func_8003124C;

void func_8003287C(void) {
    func_80030410();
    D_800DE5D4 = func_80035760(&func_8003124C, 0x07000000);
}
