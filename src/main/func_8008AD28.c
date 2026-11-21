#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_238_s32 { u8 pad[0x238]; s32 v; };
struct gd_240_s32 { u8 pad[0x240]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
s32 func_8008FF18();

void func_8008AD28(s32 arg0) {
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;

    sp18 = *(s32 *)((struct gd_260_s32 *)arg0)->v;
    sp1C = ((struct gd_4_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
    sp20 = ((struct gd_8_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
    sp24 = ((struct gd_C_s32 *)((struct gd_260_s32 *)arg0)->v)->v;
    sp28 = ((struct gd_8_s32 *)arg0)->v * 16;
    sp2C = ((struct gd_C_s32 *)arg0)->v * 16;
    sp30 = ((struct gd_240_s32 *)arg0)->v;
    sp34 = ((struct gd_238_s32 *)arg0)->v;
    func_8008FF18(sp18, sp1C, sp20, sp24, sp28, sp2C);
}
