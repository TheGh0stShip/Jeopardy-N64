#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8004DF00[];
extern s32 D_800DE5A0;
void func_80036448(s32, s32, s32);

void func_800042B8(s32 arg0, s32 arg1) {
    func_80036448(D_8004DF00[arg1], (arg0 * 0x6000) + D_800DE5A0, 0x6000);
}
