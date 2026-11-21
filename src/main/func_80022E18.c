#include "n64dk_lift.h"

M2C_UNK sprintf();              /* extern */
extern M2C_UNK D_80001350;
extern M2C_UNK D_800DE5D8;

void func_80022E18(void) {
    sprintf(&D_800DE5D8, &D_80001350);
}
