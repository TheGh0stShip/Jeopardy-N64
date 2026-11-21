#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
s32 func_8003FD88();
s32 func_8004C638();

void func_8000640C(s32 arg0) {
    func_8003FD88(D_8004DF30);
    func_8004C638(D_8004DF30, (*(s16 *)((arg0 * 2) + D_80098F3C)));
    (*(s16 *)((arg0 * 2) + D_80098F3C)) = -1;
}
