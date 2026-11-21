#include "n64dk_lift.h"

extern s32 D_80157768;

void func_80076E98(void) {
    s32 sp0;

    for (sp0 = -2048;;) {
        if (sp0 >= 0x1000) {
            return;
        }
        if (sp0 <= 0) {
            (*(s8 *)(sp0 + ((s32)&D_80157768))) = 0;
        } else {
            if (sp0 >= 255) {
                (*(u8 *)(sp0 + ((s32)&D_80157768))) = 255;
            } else {
                (*(s8 *)(sp0 + ((s32)&D_80157768))) = sp0;
            }
        }
        sp0++;
    }
}
