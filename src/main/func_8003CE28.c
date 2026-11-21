#include "n64dk_lift.h"

M2C_UNK alLink();                           /* extern */
M2C_UNK alUnlink();                              /* extern */

void func_8003CE28(s32 arg0, s32 arg1) {
    alUnlink(arg1);
    alLink(arg1, arg0 + 0x14);
}
