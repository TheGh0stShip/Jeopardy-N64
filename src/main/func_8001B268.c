#include "n64dk_lift.h"

struct n64dk_a80057954 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; s32 m1C; };
extern struct n64dk_a80057954 D_80057954[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001B268(void) {
    s32 sp18;

    func_8001B230();
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 21) {
            break;
        }
        func_80020700(D_80057954[sp18].m0, D_80057954[sp18].m4, D_80057954[sp18].m8, D_80057954[sp18].mC, D_80057954[sp18].m14);
        sp18++;
    }
    if (D_800580C8 != 0) {
        sp18 = D_800580C4 * 3;
        for (;;) {
            if ((u32)sp18 >= (u32)((D_800580C4 * 3) + 3)) {
                break;
            }
            func_80020700(D_80057954[sp18].m0, D_80057954[sp18].m4, D_80057954[sp18].m8, D_80057954[sp18].mC, D_80057954[sp18].m1C);
            sp18++;
        }
    } else {
        if (D_800580D4 != 0) {
            sp18 = D_800580C4 * 3;
            for (;;) {
                if ((u32)sp18 >= (u32)((D_800580C4 * 3) + 3)) {
                    break;
                }
                func_80020700(D_80057954[sp18].m0, D_80057954[sp18].m4, D_80057954[sp18].m8, D_80057954[sp18].mC, D_80057954[sp18].m18);
                sp18++;
            }
        }
    }
    func_80020AA0(((s32)&D_0107B478));
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 21) {
            return;
        }
        func_80020C40(D_80057954[sp18].m0, D_80057954[sp18].m4, D_80057954[sp18].m8, D_80057954[sp18].mC, D_80057954[sp18].m10);
        sp18++;
    }
}
