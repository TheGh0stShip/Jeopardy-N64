#include "n64dk_lift.h"

struct n64dk_a800DF030 { s8 m0; };
extern struct n64dk_a800DF030 D_800DF030[];
extern s32 D_80058D7C;
extern s32 D_80058D80;
extern s32 D_80058D88;
extern s32 D_800DF02F;

void func_8002ED94(void) {
    s32 sp0;

    sp0 = 0;
    if (D_80058D80 == ((s32)&D_80058D7C)) {
        return;
    }
    if (D_80058D88 == 0) {
        return;
    }
    sp0 = D_80058D88;
    if ((*(u8 *)(sp0 + ((s32)&D_800DF02F))) == 32) {
        for (;;) {
            if ((*(u8 *)(sp0 + ((s32)&D_800DF02F))) != 32) {
                break;
            }
            D_800DF030[sp0--].m0 = 32;
        }
        sp0--;
    }
    for (;;) {
        if (!(((*(u8 *)(sp0 + ((s32)&D_800DF030))) != 32) && (sp0 != 0))) {
            break;
        }
        D_800DF030[sp0--].m0 = 32;
    }
    (*(s8 *)(sp0 + ((s32)&D_800DF030))) = 95;
    D_80058D88 = sp0;
}
