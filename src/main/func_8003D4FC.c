#include "n64dk_lift.h"

M2C_UNK func_80048BB8();                            /* extern */
extern s32 D_80071FF8;

void func_8003D4FC(void) {
    if (D_80071FF8 != 0) {
        func_80048BB8();
        D_80071FF8 = 0;
    }
}
