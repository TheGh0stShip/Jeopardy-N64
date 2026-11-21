#include "n64dk_lift.h"

struct gd_1F8_s32 { u8 pad[0x1F8]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_210_s32 { u8 pad[0x210]; s32 v; };
s32 func_80090AF0();
s32 func_80090DE8();
s32 func_800923A8();

s32 func_800904C8(s32 arg0) {
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;

    sp18 = arg0 + 492;
    sp1C = arg0 + 496;
    sp20 = arg0 + 488;
    sp24 = arg0 + 484;
    sp38 = ((struct gd_1F8_s32 *)arg0)->v;
    if (sp38 == 0) {
        return func_80090AF0((*(s32 *)sp18), (*(s32 *)sp1C), sp20, sp24, arg0);
    }
    if (sp38 == -1) {
        ((struct gd_210_s32 *)arg0)->v = 0;
        sp34 = *(s32 *)sp18;
        sp28 = func_800923A8(((s32)&sp2C), 1, 4, ((struct gd_208_s32 *)arg0)->v);
        if (sp28 != 4) {
            return 0;
        }
        if ((sp2C == 442) || (sp2C == 443)) {
            ((struct gd_1F8_s32 *)arg0)->v = 1;
            sp30 = func_80090DE8(arg0, sp2C);
            return sp30;
        } else {
            ((struct gd_1F8_s32 *)arg0)->v = 0;
            (*(s32 *)(*(s32 *)sp18)) = sp2C;
            (*(s32 *)sp20) = 1;
            sp30 = func_80090AF0((*(s32 *)sp18), (*(s32 *)sp1C), sp20, sp24, arg0);
            (*(s32 *)sp24) = *(s32 *)sp18;
            return sp30;
        }
    }
    sp30 = func_80090DE8(arg0, 0);
    return sp30;
}
