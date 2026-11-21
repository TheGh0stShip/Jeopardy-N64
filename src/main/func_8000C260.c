#include "n64dk_lift.h"

extern s32 func_8000BAB8;
s32 func_8000C1E0();
s32 func_80035760();

void func_8000C260(void) {
    s32 sp10;
    s32 pad0;
    s8 pad1;

    sp10 = func_80035760(((s32)&func_8000BAB8), 0x3000000);
    if (sp10 == 0) {
        return;
    }
    func_8000C1E0(sp10);
}
