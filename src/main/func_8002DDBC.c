#include "n64dk_lift.h"

extern s32 D_800560F8;
extern s32 D_80058D58;
extern s32 D_80058D5C;
extern s32 D_80058D60;
extern s32 D_80058D90;
extern s32 D_80058D94;
extern s32 D_8005998C;
extern s32 D_80059998;
extern s32 D_800E1004;
s32 func_800291D8();
s32 func_8002DCF4();
s32 func_8003FDF8();

void func_8002DDBC(void) {
    s32 sp10;

    D_80058D90 = D_80058D5C;
    D_80058D5C = D_8005998C;
    func_800291D8();
    D_800560F8 = 0;
    func_8002DCF4((*(s32 *)(((func_8003FDF8() % 6) * 4) + ((s32)&D_80058D94))), 2);
    if (D_80058D58 != 0) {
        D_800E1004 = 62;
    }
    for (sp10 = 0;;) {
        if (sp10 >= 3) {
            break;
        }
        (*(s32 *)((sp10 * 4) + ((s32)&D_80058D60))) = 0;
        sp10++;
    }
    D_80059998 = 16;
}
