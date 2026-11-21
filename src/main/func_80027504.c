#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_50_s32 { u8 pad[0x50]; s32 v; };
extern s32 D_800015EC;
s32 func_80008168();
s32 func_80027154();
s32 func_8002725C();

s32 func_80027504(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp10;
    s32 sp14;
    s8 pad0;

    sp10 = func_80027154();
    sp14 = func_8002725C();
    if (sp14 == 0) {
        func_80008168(((s32)&D_800015EC));
        return 0;
    }
    ((struct gd_50_s32 *)sp10)->v = sp14;
    ((struct gd_C_s32 *)sp14)->v = arg1;
    ((struct gd_8_s32 *)sp14)->v = arg2;
    ((struct gd_4_s32 *)sp14)->v = arg0;
    ((struct gd_50_s32 *)sp14)->v = 0;
    return sp14;
}
