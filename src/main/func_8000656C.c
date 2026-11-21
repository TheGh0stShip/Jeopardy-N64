#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
s32 func_8003CCA8();
s32 func_8004C688();

void func_8000656C(s32 arg0, register s32 arg1) {
    s16 sp10;

    sp10 = arg1;
    func_8004C688(D_8004DF30, (*(s16 *)((arg0 * 2) + D_80098F3C)));
    func_8003CCA8(D_8004DF30, sp10);
}
