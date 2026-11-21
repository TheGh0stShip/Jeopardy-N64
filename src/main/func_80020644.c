#include "n64dk_lift.h"

extern u8 D_80058800[][13];
extern s32 D_80058844;
extern s32 D_80058848;

s32 func_80020644(void) {
    return D_80058800[D_80058848][D_80058844];
}
