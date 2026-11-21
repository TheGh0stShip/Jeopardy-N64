#include "n64dk_lift.h"

struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_210_s32 { u8 pad[0x210]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
s32 func_800923A8();
s32 func_800924A4();

s32 func_80090AF0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    struct n64dk_e4 *sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;

    sp2C = ((struct gd_210_s32 *)arg4)->v;
    if (((struct gd_204_s32 *)arg4)->v != 0) {
        return 0;
    }
    sp10 = *(s32 *)arg2;
    sp20 = *(s32 *)arg3;
    if (sp10 > 0) {
        func_800924A4(arg0, sp20, (sp10 * 4));
        sp24 = arg0 + (sp10 * 4);
    } else {
        sp24 = arg0;
        sp10 = 0;
    }
    sp1C = (arg1 - sp10) * 4;
    sp14 = func_800923A8(sp24, 1, sp1C, ((struct gd_208_s32 *)arg4)->v);
    sp30 = (sp14 / 4) * 4;
    if (sp30 < sp14) {
        sp30 = ((sp14 / 4) + 1) * 4;
        sp34 = sp24 + sp14;
        for (;;) {
            if ((u32)sp34 >= (u32)(sp24 + sp30)) {
                break;
            }
            (*(s8 *)(sp34++)) = 0;
        }
        sp14 = sp30;
    }
    if (sp14 < 0) {
        return -1;
    } else {
        if (sp14 == 0) {
            (*(s32 *)arg3) = arg0;
            (*(s32 *)((sp10 * 4) + arg0)) = 0;
            (*(s32 *)(((sp10 * 4) + arg0) + 4)) = 439;
            ((struct gd_204_s32 *)arg4)->v = 1;
            return 0;
        }
    }
    sp28 = (void *)sp24;
    sp14 = sp14 / 4;
    if (sp2C != 0) {
        sp18 = 0;
        for (;;) {
            if (sp18 >= sp14) {
                break;
            }
            (*(s32 *)((s32)sp28)) = *(s32 *)((s32)sp28);
            sp28++;
            sp18++;
        }
    }
    (*(s32 *)arg3) = arg0;
    (*(s32 *)arg2) = sp10 + sp14;
    return 1;
}
