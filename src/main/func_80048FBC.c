#include "n64dk_lift.h"

M2C_UNK osSendMesg();    /* extern */
extern M2C_UNK D_800D3148;

void func_80048FBC(void) {
    osSendMesg(&D_800D3148, 0, 0);
}
