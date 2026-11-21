#include "n64dk_lift.h"

extern s32 D_80055B64;
extern s32 D_800E3724;

void func_80011AD8(u16 arg0) {
    D_800E3724 = *(s32 *)((arg0 * 4) + ((s32)&D_80055B64));
}
