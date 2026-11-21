#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8005812C[];
extern s32 D_80058130;
extern s32 D_80058134;

M2C_UNK sprintf(); /* extern */
extern M2C_UNK D_800588E4;
extern M2C_UNK D_800DE5D8;

void func_80022FB8(void) {
    sprintf(&D_800DE5D8, &D_800588E4, *D_8005812C, D_80058130, D_80058134);
}
