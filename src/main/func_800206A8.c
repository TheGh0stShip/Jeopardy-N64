#include "n64dk_lift.h"

extern u8 D_80058834[][8];
extern s32 D_80058844;
extern s32 D_80058848;

s32 func_800206A8(void) {
    return D_80058834[D_80058848][D_80058844];
}
