#include "n64dk_lift.h"

extern s32 D_800E0FFC;
extern s32 D_800E366C;
extern s32 D_800E5FC8;
extern s32 D_800E69F8;
extern s32 D_800E8FC0;

void func_8000785C(s32 arg0) {
    if ((u32)D_800E5FC8 > (u32)arg0) {
        D_800E5FC8 = D_800E5FC8 - arg0;
    } else {
        D_800E5FC8 = 0;
    }
    D_800E0FFC = *(s32 *)((D_800E5FC8 * 4) + ((s32)&D_800E8FC0));
    D_800E366C = D_800E69F8 - D_800E0FFC;
}
