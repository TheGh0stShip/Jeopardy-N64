#include "n64dk_lift.h"

extern s32 D_80058120;
extern s32 D_8005998C;
extern s32 D_800E3B24;
extern s32 D_800E3B28;

s32 func_80019750(void) {
    if (D_800E3B24 < ((*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) / 2)) {
        return (*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) / 2;
        return;
    }
    return D_800E3B28;
}
