#include "n64dk_lift.h"

struct n64dk_a800D7D2C { s32 m0; u8 pad4[0x50]; };
extern struct n64dk_a800D7D2C D_800D7D2C[];
extern s32 D_800D7D28;
s32 func_80027388();

void func_80027428(s32 arg0) {
    s32 sp10;
    s32 sp14;

    sp10 = 0;
    for (;;) {
        if (sp10 >= 300) {
            return;
        }
        if (D_800D7D2C[sp10].m0 == arg0) {
            sp14 = func_80027388(((sp10 * 84) + ((s32)&D_800D7D28)));
            if (sp14 == 1) {
            }
        }
        sp10++;
    }
}
