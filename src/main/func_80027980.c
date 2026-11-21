#include "n64dk_lift.h"

extern s32 D_80058D78;
extern u8 D_800DF030;
extern s32 D_800E3A68;
s32 func_80027838();
s32 func_8002790C();

s32 func_80027980(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;

    sp20 = 0;
    sp24 = 0;
    sp1C = 0;
    for (;;) {
        if ((u32)sp1C >= (u32)D_80058D78) {
            break;
        }
        if ((*(u8 *)(*(s32 *)((sp1C * 4) + ((s32)&D_800E3A68)))) == D_800DF030) {
            sp18 = sp10 = *(s32 *)((sp1C * 4) + ((s32)&D_800E3A68));
            sp20 = func_80027838(sp10);
            sp14 = func_8002790C(sp10);
            sp24 = func_80027838(sp14);
            break;
        }
        sp1C++;
    }
    if (sp1C == D_80058D78) {
        return 0;
    }
    for (;;) {
        if ((u32)sp24 < (u32)sp20) {
            break;
        }
        sp14 = func_8002790C(sp10);
        sp24 = func_80027838(sp14);
        if ((u32)sp24 > (u32)sp20) {
            sp18 = sp14;
        }
        if ((u32)sp24 >= (u32)sp20) {
            sp10 = sp14;
            sp20 = sp24;
        }
    }
    return sp18;
}
