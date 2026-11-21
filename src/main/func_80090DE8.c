#include "n64dk_lift.h"

struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_214_s32 { u8 pad[0x214]; s32 v; };
s32 func_80091194();
s32 func_80091284();
s32 func_800913C8();
s32 func_800914CC();
s32 func_8009178C();

s32 func_80090DE8(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    u8 sp2C;
    s32 sp30[2];
    s32 sp38;
    s32 sp3C;

    sp10 = arg0 + 492;
    sp14 = arg0 + 496;
    sp18 = arg0 + 488;
    sp1C = arg0 + 484;
    if (arg1 == 0) {
        sp24 = func_80091194(((s32)&sp20), arg0);
        if (((struct gd_204_s32 *)arg0)->v != 0) {
            return 0;
        }
        if (sp24 != 0) {
            return 0;
        }
    } else {
        sp24 = 0;
        sp20 = arg1;
    }
    for (;;) {
        goto L35;
        return;
L35: ;
        sp3C = 0;
        if (sp20 == 442) {
            sp3C = 1;
            sp24 = func_800913C8(((s32)&sp30), ((s32)&sp38), arg0);
            if (sp24 != 0) {
                return 0;
            }
            sp24 = func_80091194(((s32)&sp20), arg0);
            if (sp24 != 0) {
                return 0;
            }
        }
        if (sp20 == 443) {
            sp3C = 1;
            sp24 = func_800914CC(arg0);
            if (sp24 != 0) {
                return 0;
            }
            sp24 = func_80091194(((s32)&sp20), arg0);
            if (sp24 != 0) {
                return 0;
            }
        }
        sp2C = sp20;
        while (((sp20 & -256) == 256) && ((u32)sp2C >= 188)) {
            sp3C = 1;
            sp2C = sp20;
            sp28 = func_8009178C(sp2C, arg0);
            switch (sp28) {
            case 2:
                return 1;
            case 1:
                return 0;
            }
            goto L114;
L114: ;
            sp24 = func_80091194(((s32)&sp20), arg0);
            if (sp24 != 0) {
                return 0;
            }
            if (!((sp20 != 442) && (sp20 != 441))) {
                break;
            }
        }
        if (sp20 == 441) {
            sp3C = 1;
            if (((struct gd_214_s32 *)arg0)->v != 0) {
                return 1;
            }
            func_8009178C(255, arg0);
            ((struct gd_214_s32 *)arg0)->v = 1;
            return 1;
        }
        if (sp24 != 0) {
            return 1;
        }
        if (sp3C == 0) {
            sp20 = func_80091284(((struct gd_208_s32 *)arg0)->v);
            if (sp20 == -1) {
                ((struct gd_204_s32 *)arg0)->v = 1;
                return 0;
            }
        }
    }
}
