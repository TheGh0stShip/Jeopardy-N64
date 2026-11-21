#include "n64dk_lift.h"

extern s32 D_800E0FFC;
extern s32 D_800E366C;

void func_800076FC(s32 arg0) {
    s32 sp0;

    sp0 = D_800E0FFC & (arg0 - 1);
    if (sp0 != 0) {
        D_800E0FFC = D_800E0FFC + (arg0 - sp0);
        D_800E366C = D_800E366C - (arg0 - sp0);
    }
}
