#include "n64dk_lift.h"

struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct n64dk_f1C_s32 { u8 pad[0x1C]; s32 m[1]; };
extern s32 D_80001B50;
extern s32 D_80001B74;
extern s32 D_80059CF4;
s32 func_80007F38();
s32 func_80008168();
s32 func_80035B78();
s32 func_80035C0C();

void func_80035D14(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp10;

    sp10 = func_80035B78(arg1, arg2);
    for (;;) {
        if (sp10 == 0) {
            return;
        }
        if (arg0 >= 52) {
            func_80008168(((s32)&D_80001B50));
            return;
        }
        if (((struct gd_18_s32 *)sp10)->v < 20) {
            func_80007F38((*(s32 *)((arg0 * 4) + ((s32)&D_80059CF4))));
            ((struct n64dk_f1C_s32 *)sp10)->m[((struct gd_18_s32 *)sp10)->v] = arg0;
            ((struct gd_18_s32 *)sp10)->v++;
        } else {
            func_80008168(((s32)&D_80001B74));
        }
        sp10 = func_80035C0C(sp10, arg1, arg2);
    }
}
