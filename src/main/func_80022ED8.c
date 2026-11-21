#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8005812C[];
extern s32 D_80058B74[];
extern s32 D_80058BD4[];
extern s32 D_80059948;
extern s32 D_8005998C;

M2C_UNK sprintf();    /* extern */
extern M2C_UNK D_800588A8;
extern M2C_UNK D_800DE5D8;

void func_80022ED8(void) {
    sprintf(&D_800DE5D8, &D_800588A8, D_8005812C[D_80058B74[(D_80059948 * 3) + D_8005998C]], D_8005812C[D_80058BD4[(D_80059948 * 3) + D_8005998C]]);
}
