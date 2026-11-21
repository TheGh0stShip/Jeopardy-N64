#include "n64dk_lift.h"

M2C_UNK __osSiCreateAccessQueue();                  /* extern */
M2C_UNK osRecvMesg();  /* extern */
extern s32 D_80072358;
extern M2C_UNK D_800D3148;

void func_80048F78(void) {
    M2C_UNK sp1C;

    if (D_80072358 == 0) {
        __osSiCreateAccessQueue();
    }
    osRecvMesg(&D_800D3148, &sp1C, 1);
}
