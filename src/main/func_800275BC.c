#include "n64dk_lift.h"

struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_50_s32 { u8 pad[0x50]; s32 v; };
extern s32 D_8000160C;
extern s32 D_800D7D28;
s32 func_80008168();

void func_800275BC(s32 arg0) {
    s32 sp10;

    sp10 = (s32)&D_800D7D28;
    for (;;) {
        if (((struct gd_50_s32 *)sp10)->v == 0) {
            return;
        }
        sp10 = ((struct gd_50_s32 *)sp10)->v;
        if (((struct gd_C_s32 *)sp10)->v == 0) {
            func_80008168(((s32)&D_8000160C));
            return;
        }
        ((s32 (*)())((struct gd_C_s32 *)sp10)->v)(sp10, arg0);
    }
}
