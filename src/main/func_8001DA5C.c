#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a80057BF4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; s32 m1C; };
extern struct n64dk_a80057BF4 D_80057BF4[];
struct n64dk_a80057D74 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80057D74 D_80057D74[];
struct n64dk_a80057EF4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80057EF4 D_80057EF4[];
extern s32 D_0107B478;
extern s32 D_0107B498;
extern s32 D_0107B4B8;
extern s32 D_010942B8;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
extern struct n64dk_e8 *D_800E0F4C;
s32 func_8001AB70();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001DA5C(void) {
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
        if ((u32)sp20 >= 12) {
            break;
        }
        func_80020C40(D_80057D74[sp20].m0, D_80057D74[sp20].m4, D_80057D74[sp20].m8, D_80057D74[sp20].mC, D_80057D74[sp20].m10);
        sp20++;
    }
    func_80020AA0(((s32)&D_0107B4B8));
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= 12) {
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
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= 15) {
            break;
        }
        func_80020700(D_80057BF4[sp20].m0, D_80057BF4[sp20].m4, D_80057BF4[sp20].m8, D_80057BF4[sp20].mC, D_80057BF4[sp20].m14);
        sp20++;
    }
    if (D_800580C8 != 0) {
        sp20 = D_800580C4 * 3;
        for (;;) {
            if ((u32)sp20 >= (u32)((D_800580C4 * 3) + 3)) {
                break;
            }
            func_80020700(D_80057BF4[sp20].m0, D_80057BF4[sp20].m4, D_80057BF4[sp20].m8, D_80057BF4[sp20].mC, D_80057BF4[sp20].m1C);
            sp20++;
        }
    } else {
        if (D_800580D4 != 0) {
            sp20 = D_800580C4 * 3;
            for (;;) {
                if ((u32)sp20 >= (u32)((D_800580C4 * 3) + 3)) {
                    break;
                }
                func_80020700(D_80057BF4[sp20].m0, D_80057BF4[sp20].m4, D_80057BF4[sp20].m8, D_80057BF4[sp20].mC, D_80057BF4[sp20].m18);
                sp20++;
            }
        }
    }
    func_80020AA0(((s32)&D_0107B478));
    sp20 = 0;
    for (;;) {
        if ((u32)sp20 >= 15) {
            return;
        }
        func_80020C40(D_80057BF4[sp20].m0, D_80057BF4[sp20].m4, D_80057BF4[sp20].m8, D_80057BF4[sp20].mC, D_80057BF4[sp20].m10);
        sp20++;
    }
}
