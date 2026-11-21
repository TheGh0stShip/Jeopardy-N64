#include "n64dk_lift.h"

M2C_UNK func_80030E9C();                            /* extern */
extern s32 D_80059998;

void func_80030FB4(void) {
    D_80059998 = 0x22;
    func_80030E9C();
}
