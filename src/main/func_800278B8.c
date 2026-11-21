#include "n64dk_lift.h"

s32 func_80005DF8();                             /* extern */
s32 func_80005EA4();                         /* extern */
extern s32 D_800E5C80;

void func_800278B8(void) {
    if (func_80005DF8(D_800E5C80) != 0) {
        D_800E5C80 = func_80005EA4(0x2D);
    }
}
