#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 func_8002E1F0;
extern s32 D_80050704;
extern s32 D_800560F8;
extern s32 D_8005998C;
extern s32 D_80059998;
s32 func_800192F8();
s32 func_80035760();
s32 func_80035E48();

struct n64dk_r12 func_8000BAB8(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;

    for (;;) {
        sp10 = func_80035E48(arg1);
        if (sp10 == 0) {
            break;
        }
        switch (sp10 & 0xFFFF) {
        case 8:
            break;
        case 15:
            D_80050704 = 8;
            D_800560F8 = 99;
            func_800192F8(1, 4, 1);
            break;
        case 5:
            switch (D_80059998) {
            case 14:
                D_80050704 = 2;
                break;
            }
            break;
        case 11:
            if ((sp10 >> 16) == 4) {
                D_80050704 = D_8005998C + 5;
                func_800192F8(3, 5, 2);
            }
            if ((sp10 >> 16) == 5) {
                func_80035760(((s32)&func_8002E1F0), 0x7000000);
            }
            break;
        case 6:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
