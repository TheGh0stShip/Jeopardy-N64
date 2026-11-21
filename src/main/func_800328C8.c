#include "n64dk_lift.h"

extern s32 D_80059B10[][6];
extern s32 D_80059B88;
s32 func_80018A34();

void func_800328C8(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    for (sp10 = 0;;) {
        if (sp10 >= 6) {
            return;
        }
        sp18 = 0;
        sp14 = 0;
        for (;;) {
            if (sp14 >= 5) {
                break;
            }
            if (D_80059B10[sp14][sp10] == 0) {
                sp18++;
            }
            sp14++;
        }
        if (sp18 == 5) {
            func_80018A34(sp10, 0);
            (*(s32 *)((sp10 * 4) + ((s32)&D_80059B88))) = 0;
        } else {
            (*(s32 *)((sp10 * 4) + ((s32)&D_80059B88))) = 1;
        }
        sp10++;
    }
}
