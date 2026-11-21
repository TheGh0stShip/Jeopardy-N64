#include "n64dk_lift.h"

s32 func_8004C4D8();                                /* extern */

s32 func_8004C148(void *arg0) {
    s32 sp1C;
    s32 sp18;

    sp1C = func_8004C4D8();
    if (sp1C & 0x100) {
        sp18 = 1;
    } else {
        sp18 = 0;
    }
    if (sp1C & 0x80) {
        M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) | sp18);
        M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) & ~2);
    }
    return sp18;
}
