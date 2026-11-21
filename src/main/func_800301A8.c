#include "n64dk_lift.h"

extern s32 D_800560F8;
extern s32 D_800580E4;
extern s32 D_80058D5C;
extern s32 D_80058D68;
extern s32 D_8005998C;
extern s32 D_80059990;
extern s32 D_800E3310;
s32 func_80005EA4();
s32 func_80008C40();
s32 func_800359E8();
s32 func_8003FDF8();

void func_800301A8(s32 arg0) {
    s32 sp10;

    if (arg0 != 0) {
        switch (arg0) {
        case 1:
            sp10 = 1;
            break;
        case 2:
            sp10 = 2;
            break;
        case 3:
            if ((func_8003FDF8() % 2) != 0) {
                sp10 = 2;
            } else {
                sp10 = 1;
            }
            break;
        case 4:
            sp10 = 3;
            break;
        case 5:
            if ((func_8003FDF8() % 2) != 0) {
                sp10 = 3;
            } else {
                sp10 = 1;
            }
            break;
        case 6:
            if ((func_8003FDF8() % 2) != 0) {
                sp10 = 2;
            } else {
                sp10 = 3;
            }
            break;
        case 7:
            sp10 = (func_8003FDF8() % 3) + 1;
            break;
        }
        func_80005EA4((*(s32 *)((sp10 * 4) + ((s32)&D_80058D68))));
        (*(s32 *)((sp10 * 4) + ((s32)&D_80058D5C))) = 1;
        D_80059990--;
        D_800E3310 = (*(s32 *)((sp10 * 4) + ((s32)&D_800580E4))) - 1;
        D_8005998C = sp10 - 1;
        D_800560F8 = 99;
        func_800359E8(15);
        func_80008C40(0);
    }
}
