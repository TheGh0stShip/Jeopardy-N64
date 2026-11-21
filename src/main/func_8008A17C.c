#include "n64dk_lift.h"

extern f64 D_80075A60;
extern f64 D_80158768[][8];
f64 func_800928B4();

void func_8008A17C(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    f64 sp20;
    s32 pad0[126];
    s8 pad1;

    sp10 = 0;
    for (;;) {
        if (sp10 >= 8) {
            break;
        }
        for (sp14 = 0;;) {
            if (sp14 >= 8) {
                break;
            }
            sp20 = 0.0;
            sp18 = 0;
            for (;;) {
                if (sp18 >= 8) {
                    break;
                }
                sp20 = sp20 + (D_80158768[sp18][sp14] * ((f64)(*(s16 *)((((sp10 * 8) + sp18) * 2) + arg0))));
                sp18++;
            }
            (*(f64 *)(((((sp10 * 8) + sp14) * 8) + ((s32)&sp10)) + 24)) = sp20;
            sp14++;
        }
        sp10++;
    }
    for (sp14 = 0;;) {
        if (sp14 >= 8) {
            return;
        }
        for (sp10 = 0;;) {
            if (sp10 >= 8) {
                break;
            }
            sp20 = 0.0;
            sp18 = 0;
            for (;;) {
                if (sp18 >= 8) {
                    break;
                }
                sp20 = sp20 + (D_80158768[sp18][sp10] * (*(f64 *)(((((sp18 * 8) + sp14) * 8) + ((s32)&sp10)) + 24)));
                sp18++;
            }
            sp1C = (s32)func_800928B4((sp20 + D_80075A60));
            (*(s16 *)((((sp10 * 8) + sp14) * 2) + arg0)) = (sp1C < -256) ? -256 : ((sp1C >= 256) ? 255 : ((u16)sp1C));
            sp10++;
        }
        sp14++;
    }
}
