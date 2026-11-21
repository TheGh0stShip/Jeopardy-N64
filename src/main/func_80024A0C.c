#include "n64dk_lift.h"

extern s32 D_80058850;
extern s32 D_80058854;
extern s32 D_80058858;
extern s32 D_80058CD0;
extern s32 D_80058D2C;
s32 func_80024920();
s32 func_80027DE0();

s32 func_80024A0C(void) {
    s32 sp10;
    s32 sp14;

    if (D_80058858 == 2) {
        sp14 = func_80027DE0(12, 0) - 2;
    } else {
        sp14 = func_80027DE0(D_80058854, D_80058850) - 2;
    }
    sp10 = func_80024920(sp14);
    if (sp10 >= 23) {
        return (s32)&D_80058D2C;
    }
    return *(s32 *)((func_80024920(sp14) * 4) + ((s32)&D_80058CD0));
}
