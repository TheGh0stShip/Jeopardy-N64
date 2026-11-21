#include "n64dk_lift.h"

extern s32 D_80050704;
extern s32 D_800560F8;
extern s32 D_80058DB0;
extern s32 D_80059998;
extern s32 D_800E3348;
s32 func_800117CC();
s32 func_800292E8();
s32 func_8002DCF4();
s32 func_8003FDF8();

void func_8002DEE8(void) {
    func_800292E8();
    D_800560F8 = 99;
    if ((func_8003FDF8() % 8) >= 5) {
        D_800E3348 = D_80050704;
        D_80050704 = 11;
        if ((func_8003FDF8() % 2) != 0) {
            func_800117CC(4, 46, 20, 20);
        } else {
            func_800117CC(5, 46, 20, 20);
        }
    } else {
        func_8002DCF4((*(s32 *)(((func_8003FDF8() % 7) * 4) + ((s32)&D_80058DB0))), 2);
    }
    D_80059998 = 14;
}
