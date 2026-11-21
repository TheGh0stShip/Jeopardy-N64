#include "n64dk_lift.h"

extern s32 D_8004DF30;
extern s32 D_80098F3C;
extern s32 D_800E0F58;
s32 func_8003FDD8();
s32 func_8004C688();

s32 func_80005DF8(s32 arg0) {
    func_8004C688(D_8004DF30, (*(s16 *)((arg0 * 2) + D_80098F3C)));
    if (((*(s32 *)((arg0 * 4) + ((s32)&D_800E0F58))) = func_8003FDD8(D_8004DF30)) == 0) {
        return 1;
    }
    return 0;
}
