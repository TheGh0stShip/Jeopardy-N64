#include "n64dk_lift.h"

s32 func_80032CF0(); /* extern */
extern s32 D_800DFE00;
extern s32 D_800DFE04;
extern s32 D_800DFE10;
extern M2C_UNK func_800043BC;
extern M2C_UNK func_80004A64;
extern M2C_UNK func_80005110;

void func_800057C0(void) {
    D_800DFE00 = func_80032CF0(0, 0, &func_800043BC, 0x15020000);
    D_800DFE04 = func_80032CF0(0, 0, &func_80004A64, 0x15020000);
    D_800DFE10 = func_80032CF0(0, 0, &func_80005110, 0x15020000);
}
