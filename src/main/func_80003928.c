#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_14_u16 { u8 pad[0x14]; u16 v; };
extern s32 D_01005138;
extern s32 func_80002854;
extern s32 func_80002C84;
extern s32 D_8004DDF8;
extern s32 D_80050704;
extern s32 D_80050804;
extern s32 D_800560F8;
extern s32 D_80058858;
extern s32 D_80059998;
extern s32 D_800D7710;
extern s32 D_800DE628;
extern s32 D_800E0E10;
extern s32 D_800E3670;
extern s32 D_800E5C88;
extern s32 D_800E69CC;
extern s32 D_800E69D0;
extern s32 D_800E8F08;
extern s32 D_800E9078;
extern s32 D_800E90BC;
s32 func_8000348C();
s32 func_800036D4();
s32 func_80005EA4();
s32 func_80007784();
s32 func_800077D8();
s32 func_8000785C();
s32 func_8000C600();
s32 func_80011AD8();
s32 func_80012478();
s32 func_80018938();
s32 func_800192F8();
s32 func_8001F56C();
s32 func_80027388();
s32 func_80027714();
s32 func_80032CF0();
s32 func_80035138();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_80003928(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp28 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(sp28 & 0xFFFF)) {
        case 8:
            D_80050804 = 0;
            func_80018938();
            func_80035138();
            D_800E8F08 = 0;
            D_800560F8 = 99;
            func_800077D8();
            D_800DE628 = func_80007784(0x6000);
            D_800E9078 = func_80007784(0x6000);
            func_8000348C();
            func_80011AD8(0);
            sp2C = func_8001F56C(((*(s32 *)((D_80058858 * 24) + ((s32)&D_800E5C88))) + 5));
            sp30 = 0;
            for (;;) {
                if (sp30 >= sp2C) {
                    break;
                }
                func_80012478(((sp30 * 50) + ((s32)&D_800D7710)), D_800DE628, ((128 - (*(s32 *)((sp30 * 4) + ((s32)&D_800E0E10)))) / 2), (((96 - (sp2C * 13)) / 2) + (sp30 * 13)));
                sp30++;
            }
            func_800036D4();
            D_800E3670 = func_80032CF0(arg1, ((s32)&D_01005138), ((s32)&func_80002854), 0x1010000);
            ((struct gd_14_s16 *)D_800E3670)->v = 352;
            sp2C = 0;
            for (;;) {
                if (sp2C >= 6) {
                    break;
                }
                (*(s32 *)((sp2C * 4) + ((s32)&D_800E69D0))) = func_80032CF0(arg1, 0, ((s32)&func_80002C84), (sp2C | 0x1010080));
                ((struct gd_14_s16 *)(*(s32 *)((sp2C * 4) + ((s32)&D_800E69D0))))->v = 352;
                sp2C++;
            }
            D_80050704 = 10;
            D_800E90BC = 1;
            D_8004DDF8 = 0;
            sp18.w[1] = 1;
            sp18.w[0] = 0;
            return sp18;
            break;
        case 11:
            if ((u32)D_800E90BC < 6) {
                sp18.w[1] = 1;
                sp18.w[0] = 0;
                return sp18;
            } else {
                D_80050804 = 1;
                func_80027388(D_800E3670);
                sp2C = 0;
                for (;;) {
                    if (sp2C >= 6) {
                        break;
                    }
                    func_80027388((*(s32 *)((sp2C * 4) + ((s32)&D_800E69D0))));
                    sp2C++;
                }
                func_8000785C(1);
                D_80050704 = 2;
                func_8000C600(0, 0, 0);
                D_80059998 = 35;
                func_800359E8(5);
                sp18.w[1] = 0;
                return sp18;
            }
            break;
        case 6:
            D_80050804 = 1;
            func_80027388(D_800E3670);
            sp2C = 0;
            for (;;) {
                if (sp2C >= 6) {
                    break;
                }
                func_80027388((*(s32 *)((sp2C * 4) + ((s32)&D_800E69D0))));
                sp2C++;
            }
            func_8000785C(1);
            D_80050704 = 2;
            func_8000C600(0, 0, 0);
            D_80059998 = 35;
            func_800359E8(5);
            sp18.w[1] = 0;
            return sp18;
            break;
        }
    }
    if (D_8004DDF8 == 0) {
        ((struct gd_14_s16 *)(*(s32 *)((D_800E90BC * 4) + ((s32)&D_800E69CC))))->v = ((struct gd_14_u16 *)(*(s32 *)((D_800E90BC * 4) + ((s32)&D_800E69CC))))->v + 4;
        if (((struct gd_14_s16 *)(*(s32 *)((D_800E90BC * 4) + ((s32)&D_800E69CC))))->v >= 453) {
            func_80005EA4(7);
            D_8004DDF8 = 1;
            func_800192F8(3, 0, 2);
            sp18.w[1] = 2;
            sp18.w[0] = -1;
            return sp18;
        }
    } else {
        sp10 = func_80027714(0x3000000, 0xFF000000);
        func_8000C600(D_800E8F08, 0, 0);
        D_800E8F08 = D_800E8F08 + 5;
        if ((u32)(D_800E90BC * 180) < (u32)D_800E8F08) {
            func_8000348C();
            func_80011AD8(0);
            sp2C = func_8001F56C(((*(s32 *)((((D_80058858 * 6) + D_800E90BC) * 4) + ((s32)&D_800E5C88))) + 5));
            sp30 = 0;
            for (;;) {
                if (sp30 >= sp2C) {
                    break;
                }
                func_80012478(((sp30 * 50) + ((s32)&D_800D7710)), D_800DE628, ((128 - (*(s32 *)((sp30 * 4) + ((s32)&D_800E0E10)))) / 2), ((((96 - (sp2C * 13)) / 2) + (sp30 * 13)) - 5));
                sp30++;
            }
            func_800036D4();
            ((struct gd_8_s32 *)(*(s32 *)((D_800E90BC * 4) + ((s32)&D_800E69D0))))->v = ((struct gd_8_s32 *)(*(s32 *)((D_800E90BC * 4) + ((s32)&D_800E69D0))))->v & 15;
            D_8004DDF8 = 0;
            D_800E8F08 = D_800E90BC * 180;
            D_800E90BC++;
            sp18.w[1] = 1;
            sp18.w[0] = 0;
            return sp18;
        }
    }
    sp18.w[1] = 1;
    sp18.w[0] = 0;
    return sp18;
}
