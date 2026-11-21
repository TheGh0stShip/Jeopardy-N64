#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_01094370;
extern struct n64dk_e8 *D_800E0F4C;

void func_8000B150(s32 arg0, s32 arg1) {
    s32 sp0;

    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0x1040040;
    ((struct gd_4_s32 *)sp0)->v = arg0 & 0x1FFFFFFF;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0x6000000;
    ((struct gd_4_s32 *)sp0)->v = (s32)&D_01094370;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0x6000000;
    ((struct gd_4_s32 *)sp0)->v = arg1;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xBD000000;
    ((struct gd_4_s32 *)sp0)->v = 0;
}
