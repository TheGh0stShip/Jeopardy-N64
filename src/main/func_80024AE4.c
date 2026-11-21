#include "n64dk_lift.h"

extern s32 D_80058850;
extern s32 D_80058854;
s32 func_80024920();
s32 func_80027DE0();

s32 func_80024AE4(void) {
    s32 pad0;
    s32 sp14;

    sp14 = func_80027DE0(D_80058854, D_80058850) - 2;
    return func_80024920(sp14);
}
