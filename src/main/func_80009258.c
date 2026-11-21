#include "n64dk_lift.h"

extern s32 D_8004E1B4;
extern s32 D_8004E1B8;
extern s32 D_800E3744;
extern s32 D_800E8FF8;
s32 func_80007784();
s32 func_80036448();

void func_80009258(void) {
    s32 sp10;

    sp10 = D_8004E1B8;
    for (;;) {
        if (D_800E8FF8 == 0) {
            break;
        }
    }
    D_800E3744 = func_80007784(sp10);
    func_80036448(D_8004E1B4, D_800E3744, sp10);
}
