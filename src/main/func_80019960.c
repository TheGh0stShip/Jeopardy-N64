#include "n64dk_lift.h"

extern s32 D_800599E8;
extern s32 D_80059B10[][6];
extern s32 D_800E90A0;
extern s32 D_800E90A8;

void func_80019960(void) {
    D_800E90A8 = 0;
    D_800E90A0 = D_800599E8;
    for (;;) {
        goto L8;
        return;
L8: ;
        for (;;) {
            goto L10;
            break;
L10: ;
            if (D_80059B10[D_800E90A8][D_800E90A0] != 0) {
                break;
            }
            D_800E90A8++;
            if ((u32)D_800E90A8 >= 5) {
                break;
            }
        }
        if ((u32)D_800E90A8 < 5) {
            return;
        }
        D_800E90A8 = 0;
        D_800E90A0++;
        if ((u32)D_800E90A0 >= 6) {
            D_800E90A0 = 0;
        }
    }
}
