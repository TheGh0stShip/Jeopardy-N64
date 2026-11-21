#include "n64dk_lift.h"

extern s32 D_80000548;
extern s32 D_8000054C;
s32 func_80007AC0();
s32 func_80007EEC();

void func_80007CA0(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp18[6];

    if (arg1 == 0) {
        func_80007AC0(arg0, ((s32)&D_80000548));
        return;
    }
    sp10 = 19;
    (*(s8 *)(((s32)&sp18) + (sp10--))) = 0;
    while (!(sp10 < 0)) {
        (*(s8 *)(((s32)&sp18) + sp10)) = func_80007EEC((arg1 % 10)) + 48;
        sp10--;
        arg1 = arg1 / 10;
    }
    sp10 = 0;
    while (((*(u8 *)(((s32)&sp18) + sp10)) == 48) && (sp10 < 20)) {
        sp10++;
    }
    (*(s8 *)arg0) = 0;
    if (arg1 < 0) {
        func_80007AC0(arg0, ((s32)&D_8000054C));
    }
    func_80007AC0(arg0, (((s32)&sp18) + sp10));
}
