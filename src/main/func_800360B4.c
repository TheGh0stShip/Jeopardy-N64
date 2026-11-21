#include "n64dk_lift.h"

extern s32 D_800D7908;
extern s32 D_800DE53C;
extern s32 D_800E3338;
extern s32 D_800E335C;
extern s32 D_800E3758;
extern s32 D_800E8FF8;
extern s32 D_800E92C8;
s32 func_800092DC();
s32 func_80035858();
s32 func_8003FDF8();

void func_800360B4(void) {
    s8 pad0;

    for (; ((u32)D_800E8FF8 < 2) && (D_800E3758 == 0); D_800DE53C = D_800DE53C ^ 1) {
        while (!((u32)D_800D7908 <= (u32)D_800E3338)) {
        }
        D_800E335C = D_800E3338;
        D_800E3338 = 0;
        if (D_800E335C == 0) {
            D_800E335C = 1;
        }
        func_8003FDF8();
        func_80035858();
        D_800E3758 = 1;
        func_800092DC(((D_800DE53C * 0x36E00) + ((s32)&D_800E92C8)));
        D_800E8FF8++;
    }
}
