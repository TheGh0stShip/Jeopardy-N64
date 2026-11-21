#include "n64dk_lift.h"

struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80055F28;
extern s32 D_800E3648;

void func_80018A34(s32 arg0, s32 arg1) {
    ((struct gd_48_s32 *)(*(s32 *)((arg0 * 4) + ((s32)&D_800E3648))))->v = *(s32 *)((((arg0 * 5) + arg1) * 4) + ((s32)&D_80055F28));
}
