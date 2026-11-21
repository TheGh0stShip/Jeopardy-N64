#include "n64dk_lift.h"

struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80058858;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_800599F0[][7];
extern s32 D_80059B10[][6];
extern s32 D_800E36A8;

void func_80034C20(void) {
    ((struct gd_48_s32 *)(*(s32 *)((((D_800599EC * 6) + D_800599E8) * 4) + ((s32)&D_800E36A8))))->v = D_800599F0[D_80058858][D_80059B10[D_800599EC][D_800599E8]];
}
