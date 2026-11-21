#include "n64dk_lift.h"

struct gd_64_s32 { u8 pad[0x64]; s32 v; };
extern s32 D_80162B50;
extern s32 D_80162B54;
extern s32 D_80162B58;

void func_8008A4B8(s32 arg0, s32 arg1) {
    ((struct gd_64_s32 *)arg1)->v = 16;
    D_80162B50 = 0xF800;
    D_80162B54 = 1984;
    D_80162B58 = 62;
}
