#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_80055FA0;
extern s32 D_80055FD4;
extern u8 D_8005602C[][7];
extern struct n64dk_e8 *D_800E0F4C;

void func_80018550(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;

    sp0 = 0;
    for (;;) {
        if ((u32)sp0 >= 7) {
            return;
        }
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xBC00000A;
        ((struct gd_4_s32 *)sp4)->v = -1;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xBC00040A;
        ((struct gd_4_s32 *)sp4)->v = -1;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xBB000001;
        ((struct gd_4_s32 *)sp4)->v = -1;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xE7000000;
        ((struct gd_4_s32 *)sp4)->v = 0;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xB900031D;
        ((struct gd_4_s32 *)sp4)->v = 0x552078;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xFC121824;
        ((struct gd_4_s32 *)sp4)->v = 0xFF33FFFF;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xFD100000;
        ((struct gd_4_s32 *)sp4)->v = *(s32 *)((D_8005602C[((struct gd_4_s32 *)arg0)->v][sp0] * 4) + ((s32)&D_80055FA0));
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xF5100000;
        ((struct gd_4_s32 *)sp4)->v = 0x7094250;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xE6000000;
        ((struct gd_4_s32 *)sp4)->v = 0;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xF3000000;
        ((struct gd_4_s32 *)sp4)->v = 0x73FF100;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xE7000000;
        ((struct gd_4_s32 *)sp4)->v = 0;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xF5101000;
        ((struct gd_4_s32 *)sp4)->v = 0x94250;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xF2000000;
        ((struct gd_4_s32 *)sp4)->v = 0x7C07C;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xE7000000;
        ((struct gd_4_s32 *)sp4)->v = 0;
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0x6000000;
        ((struct gd_4_s32 *)sp4)->v = *(s32 *)((((((struct gd_4_s32 *)arg0)->v * 7) + sp0) * 4) + ((s32)&D_80055FD4));
        sp4 = (s32)D_800E0F4C++;
        (*(s32 *)sp4) = 0xE7000000;
        ((struct gd_4_s32 *)sp4)->v = 0;
        sp0++;
    }
}
