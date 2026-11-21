#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80058D50;
extern s32 D_80058D54;
s32 func_800192F8();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_8002DBAC(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            func_800192F8(D_80058D50, 0, 1);
            break;
        case 11:
            switch ((u32)sp20 >> 16) {
            case 0:
                func_800359E8(D_80058D54);
                sp10.w[1] = 0;
                return sp10;
                break;
            }
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
