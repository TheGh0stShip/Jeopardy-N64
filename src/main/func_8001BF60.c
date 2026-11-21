#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a800569F4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a800569F4 D_800569F4[];
extern s32 D_010942B8;
extern s32 D_800560FC;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_8001AB70();
s32 func_80020700();

void func_8001BF60(void) {
    s32 sp20;
    s32 sp24;

    func_8001AB70(0, 0, 320, 240, 0, 0, 0, 255);
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_010942B8;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0x200000;
    sp20 = 0;
    for (;;) {
        if (sp20 >= 3) {
            break;
        }
        func_80020700(D_800569F4[sp20].m0, D_800569F4[sp20].m4, D_800569F4[sp20].m8, D_800569F4[sp20].mC, D_800569F4[sp20].m10);
        sp20++;
    }
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0;
    func_8001AB70(0, 0, 320, 240, 0, 0, 0, D_800560FC);
}
