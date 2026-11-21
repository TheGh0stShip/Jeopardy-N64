#include "n64dk_lift.h"

s32 func_80011B24();

s32 func_80026B64(s32 arg0, s32 arg1) {
    s32 sp18[2];
    s32 sp20;

    func_80011B24(arg0, ((s32)&sp20), ((s32)&sp18), ((s32)&sp18), ((s32)&sp18));
    if (arg1 < sp20) {
        return 1;
        return;
    }
    return 0;
}
