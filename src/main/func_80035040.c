#include "n64dk_lift.h"

extern s32 D_80001A5C;
extern s32 D_800DE5D8;
s32 func_80007F38();
s32 func_8003FDF8();
s32 func_800494AC();

s32 func_80035040(s32 arg0) {
    s32 sp10;

    for (;;) {
        if ((sp10 = (func_8003FDF8() % 18) + 12) != arg0) {
            break;
        }
    }
    func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001A5C), sp10);
    func_80007F38(((s32)&D_800DE5D8));
    return sp10;
}
