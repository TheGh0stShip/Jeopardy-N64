#include "n64dk_lift.h"

M2C_UNK *func_80045E78(void *arg0, u8 arg1, u8 arg2, u8 arg3) {
    M2C_UNK *temp_v1_8;

    temp_v1_8 = M2C_FIELD(arg0, M2C_UNK **, 0x6C);
    if (temp_v1_8 != NULL) {
        M2C_FIELD(arg0, M2C_UNK **, 0x6C) = (M2C_UNK *) M2C_FIELD(temp_v1_8, M2C_UNK **, 0);
        M2C_FIELD(temp_v1_8, M2C_UNK **, 0) = NULL;
        if (M2C_FIELD(arg0, M2C_UNK **, 0x64) == NULL) {
            M2C_FIELD(arg0, M2C_UNK **, 0x64) = temp_v1_8;
        } else {
            *M2C_FIELD(arg0, M2C_UNK **, 0x68) = temp_v1_8;
        }
        M2C_FIELD(arg0, M2C_UNK **, 0x68) = temp_v1_8;
        M2C_FIELD(temp_v1_8, s8 *, 0x31) = (s8) (arg3);
        M2C_FIELD(temp_v1_8, s8 *, 0x32) = (s8) (arg1);
        M2C_FIELD(temp_v1_8, s8 *, 0x33) = (s8) (arg2);
        M2C_FIELD(temp_v1_8, M2C_UNK **, 0x14) = temp_v1_8;
    }
    return temp_v1_8;
}
