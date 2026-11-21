#include "n64dk_lift.h"

M2C_UNK __osPiCreateAccessQueue();                  /* extern */
M2C_UNK osRecvMesg();  /* extern */
extern s32 D_80071FE8;
extern M2C_UNK D_800D1D98;

void func_8003C108(void) {
    M2C_UNK sp1C;

    if (D_80071FE8 == 0) {
        __osPiCreateAccessQueue();
    }
    osRecvMesg(&D_800D1D98, &sp1C, 1);
}
