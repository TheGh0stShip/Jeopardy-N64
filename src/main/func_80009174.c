#include "n64dk_lift.h"

extern s32 D_8004E1AC;
extern s32 D_8004E1B0;
extern s32 D_800E69EC;
extern f32 D_800E9080;
extern f32 D_800E9088;
extern f32 D_800E9090;
extern f32 D_800E9094;
extern f32 D_800E909C;
extern f32 D_800E90A4;
extern s16 D_801200A0;
extern s32 D_801200C0;
extern s16 D_80156EA0;
extern s32 D_80156EC0;
extern s32 D_803B5000;
extern s32 D_803DA800;
s32 func_80007784();
s32 func_800077D8();
s32 func_80036448();
s32 func_8004D878();

void func_80009174(void) {
    s32 sp10;

    sp10 = D_8004E1B0;
    D_800E9080 = D_800E9088 = D_800E9090 = D_800E9094 = D_800E909C = D_800E90A4 = 0.0f;
    D_800E69EC = func_80007784(sp10);
    func_80036448(D_8004E1AC, D_800E69EC, sp10);
    D_801200A0 = 2;
    D_801200C0 = (s32)&D_803B5000;
    D_80156EA0 = 2;
    D_80156EC0 = (s32)&D_803DA800;
    func_8004D878(64);
    func_800077D8();
}
