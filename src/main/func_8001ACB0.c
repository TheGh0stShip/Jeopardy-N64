#include "n64dk_lift.h"

struct n64dk_a80056114 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056114 D_80056114[];
extern s32 D_800580CC;
s32 func_80020700();

void func_8001ACB0(s32 arg0, s32 arg1) {
    s32 sp18;

    sp18 = D_800580CC * 3;
    for (;;) {
        if ((u32)sp18 >= (u32)((D_800580CC * 3) + 3)) {
            return;
        }
        func_80020700((D_80056114[sp18].m0 + arg0), (D_80056114[sp18].m4 + arg1), D_80056114[sp18].m8, D_80056114[sp18].mC, D_80056114[sp18].m10);
        sp18++;
    }
}
