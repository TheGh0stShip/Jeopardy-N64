#include "n64dk_lift.h"

extern s32 D_010A32E8;
extern s32 D_010A3310;
extern s32 func_8000CC84;
extern s32 func_8000D060;
s32 func_800057C0();
s32 func_80032CF0();

void func_8000D34C(void) {
    s32 sp10;
    s32 sp14;

    sp10 = func_80032CF0(0, ((s32)&D_010A32E8), ((s32)&func_8000CC84), 0x4010000);
    sp14 = func_80032CF0(0, ((s32)&D_010A3310), ((s32)&func_8000D060), 0x4010000);
    func_800057C0();
}
