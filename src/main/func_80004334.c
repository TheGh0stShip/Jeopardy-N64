#include "n64dk_lift.h"

extern s32 D_800DE5A0;
extern s32 D_800E0DDC;
s32 func_800042B8();
s32 func_80007784();
s32 func_80043338();

void func_80004334(void) {
    s8 pad0;

    D_800DE5A0 = func_80007784(0x12000);
    func_800042B8(0, 3);
    func_800042B8(1, 1);
    func_800042B8(2, 2);
    D_800E0DDC = func_80043338(D_800DE5A0);
}
