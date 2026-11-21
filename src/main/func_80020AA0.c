#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern struct n64dk_e8 *D_800E0F4C;

void func_80020AA0(s32 arg0) {
    s32 sp0;

    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xBA000E02;
    ((struct gd_4_s32 *)sp0)->v = 0x8000;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xFD100000;
    ((struct gd_4_s32 *)sp0)->v = arg0;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xE8000000;
    ((struct gd_4_s32 *)sp0)->v = 0;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xF5000100;
    ((struct gd_4_s32 *)sp0)->v = 0x7000000;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xE6000000;
    ((struct gd_4_s32 *)sp0)->v = 0;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xF0000000;
    ((struct gd_4_s32 *)sp0)->v = 0x703C000;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xE7000000;
    ((struct gd_4_s32 *)sp0)->v = 0;
    sp0 = (s32)D_800E0F4C++;
    (*(s32 *)sp0) = 0xE7000000;
    ((struct gd_4_s32 *)sp0)->v = 0;
}
