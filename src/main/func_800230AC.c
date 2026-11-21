#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8005812C[];
extern s32 D_80058AB4[];
extern s32 D_80058B14[];
extern s32 D_80058C58[];
extern s32 D_80059948;
extern s32 D_8005998C;
extern s32 D_800E3660[];

M2C_UNK sprintf(); /* extern */
extern M2C_UNK D_80058958;
extern M2C_UNK D_800DE5D8;

void func_800230AC(void) {
    sprintf(&D_800DE5D8, &D_80058958, D_8005812C[D_80058AB4[(D_80059948 * 3) + D_8005998C]], D_8005812C[D_80058B14[(D_80059948 * 3) + D_8005998C]], D_80058C58[D_800E3660[D_8005998C]]);
}
