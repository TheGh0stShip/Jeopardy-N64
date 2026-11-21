#include "n64dk_lift.h"

extern s32 D_80058D5C;
extern s32 D_80058D90;
extern s32 D_8005999C;
s32 func_8002DCF4();
s32 func_8003FDF8();

void func_80030FF0(void) {
    if (D_80058D90 == D_80058D5C) {
        func_8002DCF4((*(s32 *)(((func_8003FDF8() % 2) * 4) + ((s32)&D_8005999C))), 2);
        return;
    }
    func_8002DCF4(31, 2);
}
