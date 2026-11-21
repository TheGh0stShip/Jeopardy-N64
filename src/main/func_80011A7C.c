#include "n64dk_lift.h"

extern s32 D_80055B94;

s32 func_80011A7C(u16 arg0) {
    return (arg0 * 44) + ((s32)&D_80055B94);
}
