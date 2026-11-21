#include "n64dk_lift.h"

struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_248_s32 { u8 pad[0x248]; s32 v; };
extern s32 D_8015EAC8;
extern s32 D_8015EB3C;
extern s32 D_80162F54;
s32 func_800774B4();
s32 func_800927E8();

s32 func_8008AC6C(void) {
    s32 sp10;

    sp10 = ((struct gd_248_s32 *)D_80162F54)->v;
    for (;;) {
        if (sp10 != ((struct gd_248_s32 *)D_80162F54)->v) {
            break;
        }
        func_800774B4(0, D_80162F54, 0, ((s32)&D_8015EAC8));
    }
    if (((struct gd_1F4_s32 *)D_80162F54)->v != 0) {
        func_800927E8(D_8015EB3C);
        return 1;
    }
    return 0;
}
