#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_18_s32 { u8 pad[0x18]; s32 v; };
struct gd_1C_s32 { u8 pad[0x1C]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
struct gd_70_s32 { u8 pad[0x70]; s32 v; };
struct gd_74_s32 { u8 pad[0x74]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_80001ADC;
s32 func_80007F38();
s32 func_8003525C();
s32 func_8003541C();
s32 func_80035528();

s32 func_80035760(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;
    s8 pad0;

    sp10 = func_8003525C();
    sp14 = func_8003541C();
    if (sp14 == 0) {
        func_80007F38(((s32)&D_80001ADC));
        return 0;
    }
    ((struct gd_7C_s32 *)sp10)->v = sp14;
    (*(s32 *)sp14) = arg0;
    ((struct gd_8_s32 *)sp14)->v = arg1;
    ((struct gd_C_s32 *)sp14)->v = 0;
    ((struct gd_10_s32 *)sp14)->v = 0;
    ((struct gd_1C_s32 *)sp14)->v = 8;
    ((struct gd_18_s32 *)sp14)->v = 1;
    ((struct gd_7C_s32 *)sp14)->v = 0;
    ((struct gd_70_s32 *)sp14)->v = 0;
    ((struct gd_74_s32 *)sp14)->v = 0;
    ((struct gd_6C_s32 *)sp14)->v = func_80035528(((struct gd_4_s32 *)sp14)->v);
    return sp14;
}
