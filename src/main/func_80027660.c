#include "n64dk_lift.h"

struct gd_C_s32 { u8 pad[0xC]; s32 v; };
extern s32 D_8000160C;
s32 func_80008168();
s32 func_80027714();
s32 func_800277A8();

void func_80027660(s32 arg0) {
    s32 sp10;

    sp10 = func_80027714(0x5000000, 0xFF000000);
    for (;;) {
        if (sp10 == 0) {
            return;
        }
        if (((struct gd_C_s32 *)sp10)->v == 0) {
            func_80008168(((s32)&D_8000160C));
            return;
        }
        ((s32 (*)())((struct gd_C_s32 *)sp10)->v)(sp10, arg0);
        sp10 = func_800277A8(sp10, 0x5000000, 0xFF000000);
    }
}
