#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
s32 func_8003CC48();
s32 func_8004C688();

void func_800065F0(s32 arg0, s32 arg1) {
    func_8004C688(D_8004DF30, (*(s16 *)((arg0 * 2) + D_80098F3C)));
    func_8003CC48(D_8004DF30, arg1);
}
