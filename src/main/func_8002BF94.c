#include "n64dk_lift.h"

extern s32 D_80001734;
extern s32 D_80058F00;
extern s32 D_800DE5D8;
s32 func_800117CC();
s32 func_800494AC();

s32 func_8002BF94(s32 arg0) {
    if ((arg0 & 256) != 0) {
        D_80058F00++;
        func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001734), D_80058F00);
    }
    if ((arg0 & 512) != 0) {
        D_80058F00--;
        func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001734), D_80058F00);
    }
    if ((arg0 & 0x8000) != 0) {
        func_800117CC(D_80058F00, 5, 20, 20);
    }
    if ((arg0 & 0x1000) != 0) {
        return 1;
    }
    return 0;
}
