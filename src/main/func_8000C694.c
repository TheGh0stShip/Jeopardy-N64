#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_80059C44[];
extern s32 D_80059C4C[];
extern s32 D_80059C54[];
extern s32 D_80059C5C[];
extern s32 D_80059C64;
extern u16 D_800E3600;

void func_8000C694(void) {
    if (D_800E3600 & 0x800 & 0xFFFF) {
        D_80059C5C[D_80059C64] = D_80059C5C[D_80059C64] + 2;
    }
    if (D_800E3600 & 0x400 & 0xFFFF) {
        D_80059C5C[D_80059C64] = D_80059C5C[D_80059C64] - 2;
    }
    if (D_800E3600 & 0x100 & 0xFFFF) {
        D_80059C44[D_80059C64] = D_80059C44[D_80059C64] + 2;
    }
    if (D_800E3600 & 0x200 & 0xFFFF) {
        D_80059C44[D_80059C64] = D_80059C44[D_80059C64] - 2;
    }
    if (D_800E3600 & 1 & 0xFFFF) {
        D_80059C4C[D_80059C64] = D_80059C4C[D_80059C64] + 2;
    }
    if (D_800E3600 & 2 & 0xFFFF) {
        D_80059C4C[D_80059C64] = D_80059C4C[D_80059C64] - 2;
    }
    if (D_800E3600 & 4 & 0xFFFF) {
        D_80059C54[D_80059C64] = D_80059C54[D_80059C64] + 2;
    }
    if (D_800E3600 & 8 & 0xFFFF) {
        D_80059C54[D_80059C64] = D_80059C54[D_80059C64] - 2;
    }
}
