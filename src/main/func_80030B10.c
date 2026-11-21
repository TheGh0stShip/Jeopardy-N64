#include "n64dk_lift.h"

extern s32 D_80058120;
extern s32 D_800E0DD0;
extern s32 D_800E0DD4;
extern s32 D_800E0DD8;

void func_80030B10(void) {
    s32 sp0;
    s32 sp4;

    sp0 = 1;
    D_800E0DD0 = 0;
    D_800E0DD4 = 1;
    D_800E0DD8 = 2;
    for (;;) {
        if (sp0 == 0) {
            return;
        }
        sp0 = 0;
        if ((*(s32 *)((D_800E0DD0 * 4) + ((s32)&D_80058120))) > (*(s32 *)((D_800E0DD4 * 4) + ((s32)&D_80058120)))) {
            sp4 = D_800E0DD0;
            D_800E0DD0 = D_800E0DD4;
            D_800E0DD4 = sp4;
            sp0 = 1;
        }
        if ((*(s32 *)((D_800E0DD4 * 4) + ((s32)&D_80058120))) > (*(s32 *)((D_800E0DD8 * 4) + ((s32)&D_80058120)))) {
            sp4 = D_800E0DD4;
            D_800E0DD4 = D_800E0DD8;
            D_800E0DD8 = sp4;
            sp0 = 1;
        }
    }
}
