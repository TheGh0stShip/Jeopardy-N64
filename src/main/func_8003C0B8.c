#include "n64dk_lift.h"

M2C_UNK osCreateMesgQueue(); /* extern */
M2C_UNK osSendMesg();    /* extern */
extern s32 D_80071FE8;
extern M2C_UNK D_800D1D90;
extern M2C_UNK D_800D1D98;

void func_8003C0B8(void) {
    D_80071FE8 = 1;
    osCreateMesgQueue(&D_800D1D98, &D_800D1D90, 1);
    osSendMesg(&D_800D1D98, 0, 0);
}
