#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8005812C[];
extern s32 D_80058C34[];
extern s32 D_80058C40[];
extern s32 D_80058C4C[];
extern s32 D_80058C58[];
extern s32 D_8005998C;
extern s32 D_800E3660[];

M2C_UNK sprintf(); /* extern */
extern M2C_UNK D_80058988;
extern M2C_UNK D_800DE5D8;

void func_800231C8(void) {
    sprintf(&D_800DE5D8, &D_80058988, D_8005812C[D_80058C34[D_8005998C]], D_8005812C[D_80058C40[D_8005998C]], D_8005812C[D_80058C4C[D_8005998C]], D_80058C58[D_800E3660[D_8005998C]]);
}
