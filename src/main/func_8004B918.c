#include "n64dk_lift.h"

s32 osSetIntMask();                      /* extern */

void func_8004B918(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a0_15;

    temp_a0_15 = osSetIntMask(1);
    M2C_FIELD(arg1, s32 *, 4) = arg2;
    M2C_FIELD(arg1, void **, 0) = (void *) M2C_FIELD(arg0, void **, 0x260);
    M2C_FIELD(arg0, void **, 0x260) = arg1;
    osSetIntMask(temp_a0_15, arg1);
}
