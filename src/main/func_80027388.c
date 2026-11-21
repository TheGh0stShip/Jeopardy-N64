#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_50_s32 { u8 pad[0x50]; s32 v; };
extern s32 D_800E69F4;
s32 func_800271C8();

s32 func_80027388(s32 arg0) {
    s32 sp10;
    s32 sp14;

    sp10 = func_800271C8(arg0);
    if (sp10 == 0) {
        return 0;
    }
    sp14 = ((struct gd_50_s32 *)arg0)->v;
    ((struct gd_50_s32 *)sp10)->v = sp14;
    ((struct gd_C_s32 *)arg0)->v = 0;
    ((struct gd_4_s32 *)arg0)->v = 0;
    D_800E69F4--;
    return 1;
}
