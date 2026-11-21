#include "n64dk_lift.h"

M2C_UNK osSendMesg();    /* extern */
extern M2C_UNK D_800D1D98;

void func_8003C14C(void) {
    osSendMesg(&D_800D1D98, 0, 0);
}
