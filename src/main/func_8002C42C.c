#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80001734;
extern s32 func_8002CE90;
extern s32 D_800560F8;
extern s32 D_80058F00;
extern s32 D_800DE5D8;
extern s32 D_800DE62C;
extern s32 D_800E0F50;
extern s32 D_800E0FF8;
extern s32 D_800E1000;
extern s32 D_800E3360;
s32 func_8002BF94();
s32 func_80035138();
s32 func_80035760();
s32 func_80035E48();
s32 func_800494AC();

struct n64dk_r12 func_8002C42C(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            D_800E0F50 = 150;
            D_800E0FF8 = 36;
            D_800DE62C = 100;
            D_800E1000 = 60;
            func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001734), D_80058F00);
            D_800E3360 = (s32)&D_800DE5D8;
            func_80035138();
            D_800560F8 = 2;
            break;
        case 6:
            if (func_8002BF94(((u32)sp20 >> 16)) != 0) {
                D_800560F8 = 6;
                func_80035760(((s32)&func_8002CE90), 0x7000000);
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
            }
            break;
        default:
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
