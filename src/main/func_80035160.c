#include "n64dk_lift.h"

struct n64dk_a800E1008 { s32 m0; s32 m4; u8 pad8[0x78]; };
extern struct n64dk_a800E1008 D_800E1008[];
extern s32 D_800DE59C;
extern s32 D_800E1084;
extern s32 D_800E3B38;
extern s32 D_800E90AC;

void func_80035160(void) {
    s32 sp0;

    for (sp0 = 0;;) {
        if (sp0 >= 70) {
            break;
        }
        D_800E1008[sp0].m0 = 0;
        D_800E1008[sp0].m4 = sp0;
        sp0++;
    }
    D_800E90AC = 0;
    D_800E1008[0].m0 = 0;
    D_800E1084 = 0;
    D_800DE59C = 0;
    sp0 = 0;
    for (;;) {
        if (sp0 >= 50) {
            return;
        }
        (*(s32 *)((sp0 * 4) + ((s32)&D_800E3B38))) = 0;
        sp0++;
    }
}
