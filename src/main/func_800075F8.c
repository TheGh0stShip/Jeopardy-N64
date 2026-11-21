#include "n64dk_lift.h"

extern s32 D_8004E198;
extern s32 D_8004E1A8;
extern s32 D_800E0FFC;
extern s32 D_800E366C;
extern s32 D_800E5FC8;
extern s32 D_800E69F8;
extern s32 D_800E6B04;

void func_800075F8(void) {
    D_800E6B04 = D_8004E1A8;
    D_800E69F8 = D_8004E198;
    D_800E366C = D_800E69F8 - D_800E6B04;
    D_800E5FC8 = 0;
    D_800E0FFC = D_800E6B04;
}
