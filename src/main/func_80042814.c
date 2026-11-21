#include "n64dk_lift.h"

M2C_UNK alLink();                  /* extern */
M2C_UNK alUnlink();                        /* extern */
s32 osSetIntMask();                              /* extern */

void func_80042814(void *arg0) {
    s32 pad[2]; /* n64dk: frame padding, reconstruction scaffolding */
    s32 sp2C;
    M2C_UNK *temp_s1_18;
    M2C_UNK *var_s0_14;

    sp2C = osSetIntMask(1);
    var_s0_14 = M2C_FIELD(arg0, M2C_UNK **, 8);
    if (var_s0_14 != NULL) {
        do {
            temp_s1_18 = *var_s0_14;
            alUnlink(var_s0_14);
            alLink(var_s0_14, arg0);
            var_s0_14 = temp_s1_18;
        } while (temp_s1_18 != NULL);
    }
    osSetIntMask(sp2C);
}
