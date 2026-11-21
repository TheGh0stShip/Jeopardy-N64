#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010709F8;
extern s32 D_01070A78;
extern s32 D_8004DF18;
extern s32 D_80050804;
extern s32 D_800E0DDC;
extern struct n64dk_e8 *D_800E0F4C;

void func_80005110(s32 arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp4 = D_800E0DDC + 0xC000;
    if (D_80050804 == 0) {
        return;
    }
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0x1040040;
    ((struct gd_4_s32 *)sp8)->v = (s32)&D_01070A78;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0x1040040;
    ((struct gd_4_s32 *)sp8)->v = (s32)&D_010709F8;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xE7000000;
    ((struct gd_4_s32 *)sp8)->v = 0;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xBC00000A;
    ((struct gd_4_s32 *)sp8)->v = -1;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xBC00040A;
    ((struct gd_4_s32 *)sp8)->v = -1;
    sp0 = 0;
    for (;;) {
        if (sp0 >= 6) {
            break;
        }
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBB000001;
        ((struct gd_4_s32 *)sp8)->v = -1;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xE7000000;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xB900031D;
        ((struct gd_4_s32 *)sp8)->v = 0x5049D8;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xFC127E24;
        ((struct gd_4_s32 *)sp8)->v = -3079;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA001301;
        ((struct gd_4_s32 *)sp8)->v = 0x80000;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA001102;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA001001;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA000E02;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA000C02;
        ((struct gd_4_s32 *)sp8)->v = 0x3000;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xBA000903;
        ((struct gd_4_s32 *)sp8)->v = 3072;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xFD100000;
        ((struct gd_4_s32 *)sp8)->v = sp4 + (sp0 * 0x1000);
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xF5100000;
        ((struct gd_4_s32 *)sp8)->v = 0x7098250;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xE6000000;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xF3000000;
        ((struct gd_4_s32 *)sp8)->v = 0x77FF100;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xE7000000;
        ((struct gd_4_s32 *)sp8)->v = 0;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xF5101000;
        ((struct gd_4_s32 *)sp8)->v = 0x98250;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xF2000000;
        ((struct gd_4_s32 *)sp8)->v = 0x7C0FC;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xB7000000;
        ((struct gd_4_s32 *)sp8)->v = 0x2000;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xB7000000;
        ((struct gd_4_s32 *)sp8)->v = 0x20000;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0xB7000000;
        ((struct gd_4_s32 *)sp8)->v = 512;
        sp8 = (s32)D_800E0F4C++;
        (*(s32 *)sp8) = 0x6000000;
        ((struct gd_4_s32 *)sp8)->v = *(s32 *)((sp0 * 4) + ((s32)&D_8004DF18));
        sp0++;
    }
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xE7000000;
    ((struct gd_4_s32 *)sp8)->v = 0;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xB900031D;
    ((struct gd_4_s32 *)sp8)->v = 0x552078;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xE7000000;
    ((struct gd_4_s32 *)sp8)->v = 0;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xBD000000;
    ((struct gd_4_s32 *)sp8)->v = 0;
    sp8 = (s32)D_800E0F4C++;
    (*(s32 *)sp8) = 0xBD000000;
    ((struct gd_4_s32 *)sp8)->v = 0;
}
