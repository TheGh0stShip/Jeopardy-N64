#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a80056A54 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056A54 D_80056A54[];
extern s32 D_010942B8;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_80020700();

void func_8001C860(void) {
    s32 sp18;
    s32 sp1C;

    sp1C = (s32)D_800E0F4C++;
    (*(s32 *)sp1C) = 0xE7000000;
    ((struct gd_4_s32 *)sp1C)->v = 0;
    sp1C = (s32)D_800E0F4C++;
    (*(s32 *)sp1C) = 0x6000000;
    ((struct gd_4_s32 *)sp1C)->v = (s32)&D_010942B8;
    sp1C = (s32)D_800E0F4C++;
    (*(s32 *)sp1C) = 0xBA001402;
    ((struct gd_4_s32 *)sp1C)->v = 0x200000;
    sp18 = 0;
    for (;;) {
        if ((u32)sp18 >= 8) {
            return;
        }
        func_80020700(D_80056A54[sp18].m0, (D_80056A54[sp18].m4 - 20), D_80056A54[sp18].m8, D_80056A54[sp18].mC, D_80056A54[sp18].m10);
        sp18++;
    }
}
