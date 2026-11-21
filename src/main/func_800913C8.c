#include "n64dk_lift.h"

struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
s32 func_80092088();
s32 func_80092214();
s32 func_800922AC();
s32 func_800923A8();

s32 func_800913C8(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp10;
    s32 sp18[2];
    s32 sp20;
    u8 sp24;
    s32 sp28;

    sp10 = func_800923A8(((s32)&sp18), 1, 8, ((struct gd_208_s32 *)arg2)->v);
    if (sp10 < 8) {
        ((struct gd_204_s32 *)arg2)->v = 1;
        return 1;
    }
    func_80092088(((s32)&sp18), ((s32)&sp24), ((s32)&sp20));
    sp28 = func_800922AC(sp24, sp20, arg0);
    func_80092214((((s32)&sp18) + 5), arg1);
    (*(s32 *)arg1) = (*(s32 *)arg1) * 50;
    return 0;
}
