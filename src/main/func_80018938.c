#include "n64dk_lift.h"

struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80055F2C;
extern s32 D_80058858;
extern s32 D_800E3648;
extern s32 D_800E5C88;
s32 func_8001F56C();

void func_80018938(void) {
    s32 sp10;
    s32 sp14;

    for (sp10 = 0;;) {
        if (sp10 >= 6) {
            return;
        }
        sp14 = func_8001F56C(((*(s32 *)((((D_80058858 * 6) + sp10) * 4) + ((s32)&D_800E5C88))) + 5));
        ((struct gd_48_s32 *)(*(s32 *)((sp10 * 4) + ((s32)&D_800E3648))))->v = *(s32 *)((((sp10 * 5) + sp14) * 4) + ((s32)&D_80055F2C));
        sp10++;
    }
}
