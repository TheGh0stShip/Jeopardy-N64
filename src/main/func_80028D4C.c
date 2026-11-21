#include "n64dk_lift.h"

struct n64dk_a800DF030 { u8 m0; };
extern struct n64dk_a800DF030 D_800DF030[];
extern s32 D_800DE598;
extern u8 D_800E90D0[][31];
s32 func_80007F38();

s32 func_80028D4C(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    func_80007F38(((s32)&D_800DF030));
    sp10 = 0;
    for (;;) {
        if ((u32)sp10 >= (u32)D_800DE598) {
            break;
        }
        func_80007F38(((sp10 * 31) + ((s32)&D_800E90D0)));
        sp10++;
    }
    for (sp10 = 0;;) {
        if ((u32)sp10 >= (u32)D_800DE598) {
            break;
        }
        sp14 = 0;
        sp18 = 0;
        for (;;) {
            if (D_800E90D0[sp10][sp14] == 0) {
                break;
            }
            if (D_800E90D0[sp10][sp14] != D_800DF030[sp14++].m0) {
                sp18 = 1;
            }
        }
        if (sp18 == 1) {
            sp14--;
        }
        if (D_800E90D0[sp10][sp14] == 0) {
            return 1;
        }
        sp10++;
    }
    return 0;
}
