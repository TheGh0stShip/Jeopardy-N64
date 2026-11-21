#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
s32 func_8003CCA8();
s32 func_8003CD08();
s32 func_8003CD68();
s32 func_8004C688();

void func_80006498(s32 arg0, register s32 arg1, register s32 arg2, register s32 arg3) {
    u8 sp10;
    u8 sp11;
    s16 sp12;

    sp10 = arg1;
    sp11 = arg2;
    sp12 = arg3;
    func_8004C688(D_8004DF30, (*(s16 *)((arg0 * 2) + D_80098F3C)));
    func_8003CD68(D_8004DF30, sp10);
    func_8003CD08(D_8004DF30, sp11);
    func_8003CCA8(D_8004DF30, sp12);
}
