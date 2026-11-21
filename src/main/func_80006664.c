#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
extern s32 D_800E8EF8;
s32 func_8003FD88();
s32 func_80044588();
s32 func_8004C688();

void func_80006664(void) {
    s32 sp10;

    for (sp10 = 31;;) {
        if (sp10 < 0) {
            break;
        }
        if ((*(s16 *)((sp10 * 2) + D_80098F3C)) != -1) {
            func_8004C688(D_8004DF30, (*(s16 *)((sp10 * 2) + D_80098F3C)));
            func_8003FD88(D_8004DF30);
        }
        sp10--;
    }
    func_80044588(D_800E8EF8);
}
