#include "n64dk_lift.h"

M2C_UNK func_80035760();          /* extern */
extern s32 D_800DE62C;
extern s32 D_800E0F50;
extern s32 D_800E0FF8;
extern s32 D_800E1000;
extern s32 D_800E3360;
extern M2C_UNK func_80029E5C;

void func_80021B10(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    D_800E3360 = arg0;
    D_800E0F50 = arg1;
    D_800E0FF8 = arg2;
    D_800DE62C = arg3;
    D_800E1000 = arg4;
    func_80035760(&func_80029E5C, 0x07000000);
}
