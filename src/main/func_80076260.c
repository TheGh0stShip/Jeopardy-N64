#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
s32 func_80076178();

s32 func_80076260(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    if (arg2 == 0) {
        return -1;
    }
    if (((struct gd_1E8_s32 *)arg2)->v < 2) {
        func_80076178(arg2);
    }
    sp18 = ((struct gd_1E0_s32 *)arg2)->v + arg0;
    if (sp18 >= 33) {
        sp18 = sp18 - 32;
        sp10 = ((u32)(((struct gd_234_s32 *)arg2)->v & (-1 << (32 - arg0))) >> (u32)(32 - arg0)) | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg2)->v + 4)) >> (u32)((arg0 - sp18) - (arg0 - 32)));
    } else {
        sp10 = (u32)(((struct gd_234_s32 *)arg2)->v & (-1 << (32 - arg0))) >> (u32)(32 - arg0);
    }
    if (arg1 == sp10) {
        sp14 = 1;
    } else {
        sp14 = 0;
    }
    return sp14;
}
