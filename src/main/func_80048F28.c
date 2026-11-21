#include "n64dk_lift.h"

M2C_UNK osCreateMesgQueue(); /* extern */
M2C_UNK osSendMesg();    /* extern */
extern s32 D_80072358;
extern M2C_UNK D_800D3140;
extern M2C_UNK D_800D3148;

void func_80048F28(void) {
    D_80072358 = 1;
    osCreateMesgQueue(&D_800D3148, &D_800D3140, 1);
    osSendMesg(&D_800D3148, 0, 0);
}
