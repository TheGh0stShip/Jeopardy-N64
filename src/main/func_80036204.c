#include "n64dk_lift.h"

extern s32 D_8004DFD0;
extern s32 D_800CDD10;
extern s32 D_800D4450;
extern s32 D_800DE53C;
extern s32 D_800E1004;
extern s32 D_800E3318;
extern s32 D_800E3338;
extern s32 D_800E3758;
extern s32 D_800E69FC;
extern s32 D_800E8FF8;
extern s32 D_80156ED8;
extern u64 D_80156EE0;
s32 func_80005EA4();
s32 func_80036510();
s32 func_800412B8();
s32 func_80047B98();
s32 func_80048C18();

void func_80036204(s32 arg0) {
    s32 sp10;

    sp10 = 0;
    D_800DE53C = 0;
    D_800E8FF8 = 0;
    D_80156ED8 = 0;
    func_80036510();
    func_80047B98(((s32)&D_800CDD10));
    for (;;) {
        goto L13;
        return;
L13: ;
        func_800412B8(((s32)&D_800E3318), ((s32)&sp10), 1);
        switch (*(s16 *)sp10) {
        case 1:
            D_800E3338++;
            D_80156EE0++;
            if ((D_8004DFD0 != 0) && (D_80156ED8 == 0)) {
                D_80156ED8 = 1;
                func_80048C18(((s32)&D_800D4450));
            } else {
                if (D_8004DFD0 == 0) {
                    D_800E3758 = 0;
                }
            }
            break;
        case 2:
            D_800E8FF8--;
            if (D_800E1004 != 0) {
                D_800E69FC = func_80005EA4(D_800E1004);
                D_800E1004 = 0;
            }
            break;
        case 4:
            D_800E8FF8 = D_800E8FF8 + 2;
            break;
        }
    }
}
