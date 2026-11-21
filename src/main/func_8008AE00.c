#include "n64dk_lift.h"

extern s16 D_80158998[][64];
s32 func_8008B0A4();
s32 func_80092688();

void func_8008AE00(void) {
    s32 sp10;

    for (sp10 = 0;;) {
        if (sp10 >= 64) {
            return;
        }
        func_80092688(((sp10 * 128) + ((s32)&D_80158998)), 0, 128);
        D_80158998[sp10][sp10] = 256;
        func_8008B0A4(((sp10 * 128) + ((s32)&D_80158998)));
        sp10++;
    }
}
