#include "n64dk_lift.h"

extern s32 D_800D7698;
extern s32 D_800D769C;
extern s32 D_800D76A0;

void func_8000C600(s32 arg0, s32 arg1, s32 arg2) {
    D_800D7698 = arg0;
    D_800D769C = arg1;
    D_800D76A0 = arg2;
}
