#include "n64dk_lift.h"

s32 func_80045978(void *arg0, s32 arg1) {
    s32 temp_v1_7;

    temp_v1_7 = M2C_FIELD(arg0, s32 *, 0x24) - arg1;
    if (temp_v1_7 >= 0) {
        return temp_v1_7;
    }
    return 0x3E8;
}
