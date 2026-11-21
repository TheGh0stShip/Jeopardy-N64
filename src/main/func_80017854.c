#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 func_80016468;
extern s32 func_80016690;
extern s32 func_80016A28;
extern s32 func_80017528;
extern u8 D_8004DFD0;
extern s32 D_80050704;
extern s32 D_80055C38;
extern s32 D_80055C90;
extern s32 D_80055C98;
extern s32 D_80055DA8;
extern s32 D_800560F8;
extern s32 D_80056110;
extern s32 D_80059998;
extern s32 D_800D768C;
extern s32 D_800D7908;
extern s32 D_800DE01C;
extern s32 D_800E0E38;
extern s32 D_800E3358;
extern s32 D_800E3688;
extern s32 D_800E3754;
extern s32 D_800E3B2C;
extern s32 D_800E6B0C;
extern s32 D_800E6E2C;
extern s32 D_800E6E44;
extern s32 D_800E6E48;
extern s32 D_800E6E5C;
extern s32 D_800E6E70;
extern s32 D_800E6E78;
extern s32 D_800E6E88;
extern s32 D_800E8EE0;
extern s32 D_800E8F00;
s32 func_80006158();
s32 func_80009258();
s32 func_80011684();
s32 func_800192F8();
s32 func_80027388();
s32 func_80035760();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_80017854(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;

    sp18.w[1] = 1;
    sp18.w[0] = 0;
    for (;;) {
        sp10 = func_80035E48(arg1);
        if (sp10 == 0) {
            break;
        }
        switch (sp10) {
        case 8:
            D_80059998 = 42;
            func_80009258();
            if (D_8004DFD0 == 0) {
                D_80056110 = 255;
                D_800E3B2C = (s32)&D_80055DA8;
                D_800560F8 = 22;
            } else {
                D_800E3B2C = (s32)&D_80055C98;
                D_800560F8 = 22;
                func_800192F8(1, 0, 2);
            }
            break;
        case 11:
            switch ((u32)D_80055C90) {
            case 1:
                func_80035760(((s32)&func_80016468), 0x7000000);
                D_80055C90++;
                break;
            case 2:
                func_80035760(((s32)&func_80016A28), 0x7000000);
                D_80055C90++;
                break;
            case 3:
                D_80050704 = 12;
                D_800560F8 = 99;
                func_80006158(65);
                func_80011684(6, 38, 74, 60);
                D_80055C90++;
                break;
            }
            break;
        case 38:
            D_800D7908 = 2;
            func_80035760(((s32)&func_80017528), 0x7000000);
            func_80035760(((s32)&func_80016690), 0x7000000);
            D_800DE01C = 721;
            D_800D768C = 0;
            D_800560F8 = 99;
            break;
        case 34:
            func_800192F8(4, 0, 2);
            break;
        case 29:
            D_800560F8 = 24;
            func_800192F8(4, 0, 2);
            break;
        case 35:
            break;
        case 43:
            func_80027388(D_800E6E5C);
            func_80027388(D_800E6E48);
            func_80027388(D_800E6E70);
            func_80027388(D_800E6E78);
            func_80027388(D_800E6E2C);
            func_80027388(D_800E6E88);
            func_80027388(D_800E6E44);
            func_80027388(D_800E8EE0);
            func_80027388(D_800E8F00);
            func_80027388(D_800E6B0C);
            func_80027388(D_800E3754);
            func_80027388(D_800E0E38);
            func_80027388(D_800E3688);
            func_80027388(D_800E3358);
            D_800D7908 = 4;
            D_80059998 = 1;
            func_800359E8(5);
            D_80055C38 = func_80006158(66);
            sp18.w[1] = 0;
            sp18.w[0] = 0;
            return sp18;
        default:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
