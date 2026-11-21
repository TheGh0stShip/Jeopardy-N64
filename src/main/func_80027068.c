#include "n64dk_lift.h"

struct n64dk_a800D7D28 { s32 m0; s32 m4; u8 pad8[0x4]; s32 mC; u8 pad10[0x44]; };
extern struct n64dk_a800D7D28 D_800D7D28[];
extern s32 D_800D7D34;
extern s32 D_800D7D78;
extern s32 D_800E69F4;

void func_80027068(void) {
    s32 sp0;

    for (sp0 = 0;;) {
        if (sp0 >= 300) {
            break;
        }
        D_800D7D28[sp0].mC = 0;
        D_800D7D28[sp0].m0 = sp0;
        D_800D7D28[sp0].m4 = 0;
        sp0++;
    }
    D_800E69F4 = 0;
    D_800D7D34 = 0;
    D_800D7D78 = 0;
}
