#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_7C_s32 { u8 pad[0x7C]; s32 v; };
extern s32 D_800E90AC;
s32 func_80027428();
s32 func_80035370();
s32 func_800355FC();

s32 func_80035698(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;

    sp10 = func_80035370(arg0);
    if (sp10 == 0) {
        return 0;
    }
    sp14 = ((struct gd_7C_s32 *)arg0)->v;
    ((struct gd_7C_s32 *)sp10)->v = sp14;
    D_800E90AC--;
    (*(s32 *)arg0) = 0;
    func_800355FC(((struct gd_4_s32 *)arg0)->v);
    if (arg1 != 0) {
        func_80027428(((struct gd_4_s32 *)arg0)->v);
    }
    return 1;
}
