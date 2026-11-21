#include "n64dk_lift.h"

extern s32 D_80074EF8;
extern s32 D_800D7D20;
extern s32 D_800E0DE8;
extern s32 D_800E3330;
extern s32 D_800E368C;
extern s32 D_800E69F0;
extern s32 D_800E6B08;
s32 func_800077D8();
s32 func_8000785C();
s32 func_800115BC();
s32 func_8008A8F8();
s32 func_8008AC6C();
s32 func_800927E8();

void func_80011814(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp10;
    s32 pad0;
    s32 sp18;

    if (D_80074EF8 != 0) {
        func_8000785C(1);
        func_800927E8(0);
    }
    D_800E3330 = 1;
    D_800E368C = arg2;
    D_800E0DE8 = arg3;
    D_800E6B08 = arg0;
    D_800E69F0 = func_800077D8();
    D_800D7D20 = 0;
    sp18 = func_800115BC(arg0);
    func_8008A8F8(sp18);
    sp10 = 1;
    for (;;) {
        if (sp10 >= arg1) {
            break;
        }
        func_8008AC6C();
        sp10++;
    }
    func_800927E8(0);
    func_8000785C(1);
    D_800E3330 = 0;
}
