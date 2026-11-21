#include "n64dk_lift.h"

extern s32 D_800E3660;

void func_8002CBE0(void) {
    s32 sp0;

    for (sp0 = 0;;) {
        if (sp0 >= 3) {
            return;
        }
        (*(s32 *)((sp0 * 4) + ((s32)&D_800E3660))) = 99;
        sp0++;
    }
}
