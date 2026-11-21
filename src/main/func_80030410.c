#include "n64dk_lift.h"

extern s32 D_80058D78;
extern s32 D_800D7670;
extern s32 D_800D7674;
extern s32 D_800E3748;
extern s32 D_800E3A68;
extern s32 D_800E6B00;
extern s32 D_800E90C0;
extern s32 D_80156EC8;
extern s32 D_B01A593C;
extern s32 D_B0219AED;
extern s32 D_B022E2A2;
extern s32 D_B02301AC;
s32 func_80007784();
s32 func_800077D8();
s32 func_8000785C();
s32 func_80036448();

void func_80030410(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;

    sp1C = 0;
    D_800D7670 = func_80007784(0x4000);
    D_800E90C0 = func_80007784(((((s32)&D_B022E2A2) - ((s32)&D_B0219AED)) + 1));
    func_80036448(((s32)&D_B0219AED), D_800E90C0, ((((s32)&D_B022E2A2) - ((s32)&D_B0219AED)) + 1));
    D_800E3748 = func_80007784(3200);
    D_800E6B00 = func_80007784(216);
    func_800077D8();
    D_800D7674 = func_80007784((((s32)&D_B0219AED) - ((s32)&D_B01A593C)));
    func_80036448(((s32)&D_B01A593C), D_800D7674, ((((s32)&D_B0219AED) - ((s32)&D_B01A593C)) + 1));
    D_80156EC8 = D_800D7674;
    (*(s32 *)D_800E3748) = 0;
    sp10 = 1;
    while (!(sp10 >= 798)) {
        for (;;) {
            goto L72;
            break;
L72: ;
            if ((*(u8 *)D_80156EC8) == 92) {
                if ((*(u8 *)(D_80156EC8 + 1)) == 92) {
                    break;
                }
            }
            D_80156EC8++;
        }
        D_80156EC8 = D_80156EC8 + 4;
        (*(s32 *)((sp10 * 4) + D_800E3748)) = D_80156EC8 - D_800D7674;
        sp10++;
    }
    func_80036448(((s32)&D_B022E2A2), D_800D7674, ((((s32)&D_B02301AC) - ((s32)&D_B022E2A2)) + 1));
    D_80156EC8 = D_800D7674;
    (*(s32 *)D_800E6B00) = 0;
    sp10 = 1;
    while (!(sp10 >= 54)) {
        for (;;) {
            goto L140;
            break;
L140: ;
            if ((*(u8 *)D_80156EC8) == 92) {
                if ((*(u8 *)(D_80156EC8 + 1)) == 92) {
                    break;
                }
            }
            D_80156EC8++;
        }
        D_80156EC8 = D_80156EC8 + 4;
        (*(s32 *)((sp10 * 4) + D_800E6B00)) = D_80156EC8 - D_800D7674;
        sp10++;
    }
    func_8000785C(1);
    sp18 = sp14 = D_800E90C0;
    while (!((u32)sp14 >= (u32)((((s32)&D_B022E2A2) - ((s32)&D_B0219AED)) + (D_800E90C0 + 1)))) {
        if ((*(u8 *)sp14) == 13) {
            (*(s8 *)sp14) = 0;
        }
        if ((*(u8 *)(sp14++)) == 10) {
            sp1C++;
            if ((*(u8 *)sp18) != (*(u8 *)sp14)) {
                (*(s32 *)((D_80058D78 * 4) + ((s32)&D_800E3A68))) = sp14;
                D_80058D78++;
                sp18 = sp14;
            }
        }
    }
}
