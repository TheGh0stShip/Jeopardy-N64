#include "n64dk_lift.h"

extern s32 D_800E0FFC;
extern s32 D_800E5FC8;
extern s32 D_800E8FC0;

s32 func_800077D8(void) {
    if ((u32)D_800E5FC8 < 10) {
        (*(s32 *)(((D_800E5FC8++) * 4) + ((s32)&D_800E8FC0))) = D_800E0FFC;
        return 1;
        return;
    }
    return 0;
}
