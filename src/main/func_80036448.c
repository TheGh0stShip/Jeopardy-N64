#include "n64dk_lift.h"

extern s32 D_800D01F8;
s32 func_8003FBB8();
s32 func_8003FC68();
s32 func_80041248();
s32 func_800412B8();
s32 func_800485C8();

void func_80036448(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp20[6];
    s32 sp38[2];

    for (;;) {
        if (func_80041248() != 1) {
            break;
        }
    }
    func_8003FC68(arg1, arg2);
    func_8003FBB8(arg1, arg2);
    func_800485C8(((s32)&sp20), 0, 0, arg0, arg1, arg2, ((s32)&D_800D01F8));
    func_800412B8(((s32)&D_800D01F8), ((s32)&sp38), 1);
}
