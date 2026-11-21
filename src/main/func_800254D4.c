#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a80056534 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056534 D_80056534[];
struct n64dk_a800567B4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a800567B4 D_800567B4[];
struct n64dk_a80056854 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056854 D_80056854[];
struct n64dk_a80056B54 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056B54 D_80056B54[];
extern s32 D_010942B8;
extern s32 D_8005998C;
extern s32 D_800DF030;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E3660;
s32 func_80011AD8();
s32 func_80012B08();
s32 func_8001AB70();
s32 func_8001ADDC();
s32 func_80020700();
s32 func_80024B48();

void func_800254D4(void) {
    s32 sp20;
    s32 pad0;
    s32 sp28;

    func_8001AB70(0, 0, 320, 240, 0, 0, 0, 180);
    func_8001ADDC(6, 9);
    sp20 = *(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660));
    sp20 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) * 2;
    func_80020700((D_80056534[sp20].m0 + 134), (D_80056534[sp20].m4 + 30), D_80056534[sp20].m8, D_80056534[sp20].mC, D_80056534[sp20].m10);
    func_80020700((D_80056534[sp20 + 1].m0 + 134), (D_80056534[sp20 + 1].m4 + 30), D_80056534[sp20 + 1].m8, D_80056534[sp20 + 1].mC, D_80056534[sp20 + 1].m10);
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= 2) {
            break;
        }
        func_80020700(D_80056B54[sp20].m0, D_80056B54[sp20].m4, D_80056B54[sp20].m8, D_80056B54[sp20].mC, D_80056B54[sp20].m10);
        sp20++;
    }
    for (sp20 = 0;;) {
        if ((u32)sp20 >= 2) {
            break;
        }
        func_80020700(D_800567B4[sp20].m0, D_800567B4[sp20].m4, D_800567B4[sp20].m8, D_800567B4[sp20].mC, D_800567B4[sp20].m10);
        sp20++;
    }
    func_80020700(D_80056854[D_8005998C].m0, D_80056854[D_8005998C].m4, D_80056854[D_8005998C].m8, D_80056854[D_8005998C].mC, D_80056854[D_8005998C].m10);
    func_80024B48(31, 162);
    sp28 = (s32)D_800E0F4C++;
    (*(s32 *)sp28) = 0xBA001402;
    ((struct gd_4_s32 *)sp28)->v = 0;
    sp28 = (s32)D_800E0F4C++;
    (*(s32 *)sp28) = 0xB900031D;
    ((struct gd_4_s32 *)sp28)->v = 0x552078;
    sp28 = (s32)D_800E0F4C++;
    (*(s32 *)sp28) = 0xFA000000;
    ((struct gd_4_s32 *)sp28)->v = 0xFFFF00FF;
    func_80011AD8(1);
    sp28 = (s32)D_800E0F4C++;
    (*(s32 *)sp28) = 0x6000000;
    ((struct gd_4_s32 *)sp28)->v = (s32)&D_010942B8;
    sp28 = (s32)D_800E0F4C++;
    (*(s32 *)sp28) = 0xE7000000;
    ((struct gd_4_s32 *)sp28)->v = 0;
    func_80012B08(((s32)&D_800DF030), 0x43090000, 0x42E00000);
}
