#include "n64dk_lift.h"

extern s32 func_8000715C;
extern s32 D_800E3770;
extern u8 D_800E3AF8;
extern s32 D_800E3AFC;
extern s32 D_800E3B00;

s32 func_800073F8(s32 arg0) {
    s8 pad0;

    if (D_800E3AF8 == 0) {
        D_800E3AFC = 0;
        D_800E3B00 = (s32)&D_800E3770;
        D_800E3AF8 = 1;
    }
    (*(s32 *)arg0) = (s32)&D_800E3AF8;
    return (s32)&func_8000715C;
}
