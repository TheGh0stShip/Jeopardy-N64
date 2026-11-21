#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a80057D74 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80057D74 D_80057D74[];
struct n64dk_a80057EF4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80057EF4 D_80057EF4[];
extern s32 D_0107B498;
extern s32 D_0107B4B8;
extern s32 D_010942B8;
extern s32 D_800560F8;
extern s32 D_800580CC;
extern s32 D_800580D0;
extern s32 D_800580D4;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_8001AB70();
s32 func_8001ACB0();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001ADDC(s32 arg0, s32 arg1) {
    s32 sp20;
    s32 sp24;

    func_8001AB70(0, 0, 320, 240, 0, 0, 0, 180);
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_010942B8;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0x200000;
    func_80020AA0(((s32)&D_0107B498));
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= (u32)arg0) {
            break;
        }
        func_80020C40(D_80057D74[sp20].m0, D_80057D74[sp20].m4, D_80057D74[sp20].m8, D_80057D74[sp20].mC, D_80057D74[sp20].m10);
        sp20++;
    }
    func_80020AA0(((s32)&D_0107B4B8));
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= (u32)arg1) {
            break;
        }
        func_80020C40(D_80057EF4[sp20].m0, D_80057EF4[sp20].m4, D_80057EF4[sp20].m8, D_80057EF4[sp20].mC, D_80057EF4[sp20].m10);
        sp20++;
    }
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xE7000000;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_010942B8;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0x200000;
    func_8001ACB0(17, 17);
    func_8001ACB0(213, 17);
    if (D_800560F8 == 6) {
        func_8001ACB0(17, 85);
        func_8001ACB0(213, 85);
    } else {
        if (D_800560F8 != 13) {
            if (D_800560F8 != 27) {
                func_8001ACB0(17, 153);
                func_8001ACB0(213, 153);
            }
        }
    }
    D_800580CC++;
    if ((u32)D_800580CC >= 11) {
        D_800580CC = 0;
    }
    D_800580D0++;
    if (D_800580D0 == 5) {
        if (D_800580D4 != 0) {
            D_800580D4 = 0;
        } else {
            D_800580D4 = 1;
        }
        D_800580D0 = 0;
    }
}
