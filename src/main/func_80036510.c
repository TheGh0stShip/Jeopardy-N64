#include "n64dk_lift.h"

extern s32 D_80000300;
extern s32 D_800D01F8;
extern s32 D_800D0210;
extern s32 D_800D4468;
extern s32 D_800D7908;
extern s32 D_800E1004;
extern s32 D_800E3318;
extern s32 D_800E3338;
extern s32 D_800E335C;
extern s32 D_800E3370;
extern s32 D_800E3728;
extern s32 D_800E5C08;
extern s32 D_800E6B28;
extern s32 D_800E6E28;
extern s32 D_800E6E68;
extern s32 D_800E9000;
extern s32 D_800E92C0;
extern u64 D_80156EE0;
s32 func_80004334();
s32 func_80005858();
s32 func_800075F8();
s32 func_80008234();
s32 func_80008C40();
s32 func_80009174();
s32 func_8000C260();
s32 func_8000C650();
s32 func_80027068();
s32 func_8003287C();
s32 func_80035160();
s32 func_8003FDF8();
u64 func_80047D48();
s32 func_80048438();
s32 func_8004B888();
s32 func_8004B918();
s32 func_8004B968();

void func_80036510(void) {
    s32 sp18;

    func_80048438(((s32)&D_800D01F8), ((s32)&D_800D0210), 1);
    func_80048438(((s32)&D_800E3318), ((s32)&D_800E6B28), 8);
    func_80048438(((s32)&D_800E3728), ((s32)&D_800E9000), 8);
    if (D_80000300 == 2) {
        func_8004B968(((s32)&D_800E3370), ((s32)&D_800E5C08), 13, 30, 1);
    } else {
        func_8004B968(((s32)&D_800E3370), ((s32)&D_800E5C08), 13, 2, 1);
    }
    func_8004B918(((s32)&D_800E3370), ((s32)&D_800E6E68), ((s32)&D_800E3318));
    func_8004B918(((s32)&D_800E3370), ((s32)&D_800D4468), ((s32)&D_800E3728));
    D_800E92C0 = func_8004B888(((s32)&D_800E3370));
    sp18 = ((s32)func_80047D48()) & 4095;
    for (;;) {
        if ((sp18--) <= 0) {
            break;
        }
        func_8003FDF8();
    }
    D_80156EE0 = 0;
    D_800D7908 = 0;
    D_800E1004 = 0;
    D_800E3338 = 0;
    D_800E335C = 0;
    D_800E6E28 = 0;
    func_800075F8();
    func_80008C40(1);
    func_80008234();
    func_80005858();
    func_80035160();
    func_80027068();
    func_8000C260();
    func_8003287C();
    func_8000C650(0);
    func_80004334();
    func_80009174();
}
