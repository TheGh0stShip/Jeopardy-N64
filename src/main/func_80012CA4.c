#include "n64dk_lift.h"

extern s16 D_80055C1C;
s32 func_80012B08(s32, f32, f32);

void func_80012CA4(s32 arg0, register s32 arg1, register s32 arg2) {
    s16 sp10;
    s16 sp12;

    sp10 = arg1;
    sp12 = arg2;
    D_80055C1C = 1;
    func_80012B08(arg0, ((f32)sp10), ((f32)sp12));
}
