#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_01094318;
extern struct n64dk_e8 *D_800E0F4C;

void func_8001AB70(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 sp0;

    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0x6000000;
    ((struct gd_4_s32 *)sp0)->v = (s32)&D_01094318;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xFA000000;
    ((struct gd_4_s32 *)sp0)->v = ((((arg4 & 255) << 24) | ((arg5 & 255) << 16)) | ((arg6 & 255) << 8)) | (arg7 & 255);
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = ((((arg0 + arg2) & 1023) << 14) | 0xF6000000) | (((arg1 + arg3) & 1023) << 2);
    ((struct gd_4_s32 *)sp0)->v = ((arg0 & 1023) << 14) | ((arg1 & 1023) << 2);
}
