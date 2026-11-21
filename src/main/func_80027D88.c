#include "n64dk_lift.h"

extern s32 D_800D7674;
extern s32 D_800E3748;

s32 func_80027D88(s32 arg0) {
    return D_800D7674 + *(s32 *)((arg0 * 4) + D_800E3748);
}
