#include "n64dk_lift.h"

s32 func_80007F38();

void func_80007FA8(s32 arg0) {
    s32 sp10[4];
    s16 pad0;
    s8 pad1;
    u8 sp23;
    s32 pad2;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;

    sp34 = arg0;
    if (sp34 < 0) {
        sp34 = sp34 * -1;
    }
    sp23 = 0;
    sp28 = 18;
    sp2C = 10;
    for (;;) {
        if (0x3B9AC9FF < sp2C) {
            break;
        }
        sp30 = sp34 % sp2C;
        sp34 = sp34 - sp30;
        sp30 = sp30 / (sp2C / 10);
        (*(s8 *)(((s32)&sp10) + (sp28--))) = ((u8)sp30) + 48;
        if (sp34 == 0) {
            break;
        }
        sp2C = sp2C * 10;
    }
    if (arg0 < 0) {
        (*(s8 *)(((s32)&sp10) + (sp28--))) = 45;
    }
    func_80007F38(((s32)((u8 *)&sp10 + (sp28 + 1))));
}
