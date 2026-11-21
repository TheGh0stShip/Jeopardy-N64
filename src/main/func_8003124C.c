#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80001848;
extern s32 D_8000186C;
extern s32 func_80003928;
extern s32 func_80017188;
extern s32 func_80017854;
extern s32 func_80017D88;
extern s32 func_80018AAC;
extern s32 func_80018F64;
extern s32 func_80019414;
extern s32 func_80019AA0;
extern s32 func_8001A330;
extern s32 func_800299A8;
extern s32 func_8002A030;
extern s32 func_8002CE90;
extern s32 func_8002E1F0;
extern s32 func_8002E87C;
extern s32 func_800308AC;
extern s32 func_80033124;
extern s32 func_80033DD4;
extern s32 func_800340C4;
extern s32 func_800344FC;
extern s16 D_8004DFD2;
extern s32 D_80050704;
extern s32 D_80050800;
extern s32 D_800560F4;
extern s32 D_800560F8;
extern s32 D_800580E8;
extern s32 D_80058120;
extern s32 D_80058850;
extern s32 D_80058854;
extern s32 D_80058858;
extern s32 D_80058D58;
extern s32 D_80058D5C;
extern s32 D_80058D90;
extern s32 D_80058F00;
extern s32 D_80059948;
extern s32 D_80059980;
extern s32 D_80059984;
extern s32 D_80059988;
extern s32 D_8005998C;
extern s32 D_80059990;
extern s32 D_80059994;
extern s32 D_80059998;
extern s32 D_800599A4;
extern s32 D_800599B4;
extern s32 D_800599C0;
extern s32 D_800599CC;
extern s32 D_800599D8;
extern s32 D_800599DC;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_80059BA4;
extern s32 D_80059BA8;
extern s32 D_800D7680;
extern s32 D_800DF080;
extern s32 D_800DFE08;
extern s32 D_800DFE0C;
extern s32 D_800E0DD0;
extern s32 D_800E3310;
extern s32 D_800E3348;
extern s32 D_800E3660;
extern s32 D_800E3698;
extern s32 D_800E5C78;
extern s32 D_800E6E4C;
s32 func_80005EA4();
s32 func_8000D34C();
s32 func_800117CC();
s32 func_80021B10();
s32 func_80028190();
s32 func_80028584();
s32 func_8002DCF4();
s32 func_8002DD60();
s32 func_800301A8();
s32 func_8003087C();
s32 func_80030A48();
s32 func_80030B10();
s32 func_80030C70();
s32 func_80030E9C();
s32 func_80030FB4();
s32 func_80030FF0();
s32 func_80031090();
s32 func_80032DF4();
s32 func_80034C20();
s32 func_80034CF0();
s32 func_80035040();
s32 func_80035104();
s32 func_80035138();
s32 func_80035760();
s32 func_800359E8();
s32 func_80035E48();
s32 func_8003FB88();
s32 func_8003FDF8();

struct n64dk_r12 func_8003124C(s32 arg1) {
    struct n64dk_r12 sp18;
    s32 sp28;
    s32 sp2C;
    s32 sp30;

    sp2C = 0;
    for (;;) {
        if (((sp28 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp28 & 0xFFFF) {
        case 46:
            D_80050704 = D_800E3348;
        case 5:
            switch (D_80059998) {
            case 1:
                D_80050704 = 2;
                D_80059998 = 2;
                D_800560F8 = 6;
                func_80035138();
                func_80032DF4();
                func_8000D34C();
                func_80035760(((s32)&func_80018F64), 0x7000000);
                func_80035760(((s32)&func_80018AAC), 0x7000000);
                func_80035760(((s32)&func_8002CE90), 0x7000000);
                break;
            case 3:
                func_80005EA4(37);
                func_800359E8(20);
                break;
            case 4:
                if (D_80059BA4 != 0) {
                    D_800560F8 = 3;
                }
                D_80059998 = 5;
                break;
            case 6:
                if (((u32)sp28 >> 16) == 1) {
                    func_800359E8(20);
                }
                break;
            case 8:
                D_80059998 = 27;
                D_8005998C = 0;
                for (;;) {
                    if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) != 0) {
                        break;
                    }
                    D_8005998C++;
                }
                D_80059994 = D_8005998C;
                D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
                D_800E3348 = D_80050704;
                D_80050704 = 11;
                func_800117CC(2, 46, 20, 20);
                break;
            case 5:
                if (D_80059BA4 != 0) {
                }
                D_800560F8 = 3;
                func_80035104();
                break;
            case 9:
                break;
            case 10:
                func_8002DD60(2, 47);
                D_80050704 = 8;
                break;
            case 11:
                func_80021B10(((s32)&D_80001848), 120, 85, 80, 50);
                D_80059998 = 13;
                D_800560F8 = 3;
                break;
            case 13:
                D_800560F8 = 99;
                func_80035138();
                func_80034C20();
                break;
            case 14:
                if (D_80059990 != 0) {
                    D_80050704 = 8;
                    func_8002DCF4((*(s32 *)((D_80059990 * 4) + ((s32)&D_800599A4))), 2);
                    D_80059998 = 15;
                    func_80035760(((s32)&func_800340C4), 0x7000000);
                } else {
                    func_80030FB4();
                }
                break;
            case 34:
                if (D_80059BA4 != 0) {
                    D_80059998 = 5;
                    D_800560F8 = 0;
                    D_8005998C = D_80058D5C;
                    D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
                    D_80050704 = 2;
                    func_80030FF0();
                } else {
                    func_800359E8(9);
                }
                break;
            case 16:
                if (D_80059BA4 != 0) {
                    D_80050704 = 2;
                    D_80059998 = 5;
                    if (D_80058D90 == D_80058D5C) {
                        if ((func_8003FDF8() % 2) != 0) {
                            func_80030FF0();
                        } else {
                            func_8002DCF4((*(s32 *)(((func_8003FDF8() % 2) * 4) + ((s32)&D_800599CC))), 2);
                        }
                    } else {
                        func_80030FF0();
                    }
                } else {
                    func_800359E8(9);
                }
                break;
            case 17:
                D_80059998 = 3;
                D_800E3348 = D_80050704;
                D_80050704 = 11;
                func_800117CC(0, 46, 20, 20);
                D_800DFE0C = 99;
                D_800DFE08 = func_80035040(99);
                break;
            case 18:
                func_80030FB4();
                break;
            case 19:
                func_80035104();
                D_80059998 = 5;
                break;
            case 29:
                D_80059998 = 30;
                D_800560F8 = 99;
                D_800E3348 = D_80050704;
                D_80050704 = 11;
                func_800117CC(1, 46, 20, 20);
                break;
            case 30:
                D_80059998 = 40;
                D_80050704 = 2;
                func_80035760(((s32)&func_8002CE90), 0x7000000);
                func_800359E8(45);
                break;
            case 27:
                D_800E5C78 = func_8003087C();
                if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) != 0) {
                    if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) >= 0) {
                        func_80005EA4(7);
                        D_800560F8 = 19;
                    } else {
                        D_800560F8 = 26;
                    }
                    D_80059998 = 32;
                    func_80035760(((s32)&func_800308AC), 0x7000000);
                } else {
                    D_8005998C++;
                    func_800359E8(5);
                }
                break;
            case 31:
                func_800359E8(26);
                D_80059994 = 0;
                break;
            case 41:
                D_80059998 = 31;
                func_800359E8(26);
                break;
            case 33:
                if (D_80059BA4 != 0) {
                    D_800560F8 = 3;
                    D_80059998 = 19;
                    func_80030FF0();
                } else {
                    func_800359E8(9);
                }
                break;
            case 35:
                func_800359E8(36);
                break;
            case 36:
                func_800359E8(37);
                break;
            case 37:
                func_800359E8(42);
                break;
            case 39:
                func_80035760(((s32)&func_80003928), 0x7000000);
                break;
            case 43:
                D_80059998 = 31;
                func_800359E8(33);
                break;
            case 44:
                D_80059998 = 29;
                D_80059948 = 0;
                if (D_800E6E4C > 0) {
                    sp2C = 0;
                    for (;;) {
                        if ((u32)sp2C >= 3) {
                            break;
                        }
                        if ((*(s32 *)((sp2C * 4) + ((s32)&D_800D7680))) == D_800E6E4C) {
                            D_80059948 = D_80059948 | (1 << sp2C);
                        }
                        sp2C++;
                    }
                }
                D_800560F8 = 29;
                func_80035760(((s32)&func_8002A030), 0x7000000);
                break;
            case 45:
                func_80035760(((s32)&func_80017D88), 0x7000000);
                break;
            }
            break;
        case 8:
            for (sp30 = 0;;) {
                if ((u32)sp30 >= 3) {
                    break;
                }
                (*(s32 *)((sp30 * 4) + ((s32)&D_800E3660))) = sp30;
                sp30++;
            }
            D_800E3310 = D_800580E8 - 1;
            func_8003FB88(0, 0);
            D_80050800 = 1;
            func_80035760(((s32)&func_800344FC), 0x7000000);
            func_80035760(((s32)&func_80019414), 0x7000000);
            func_80035760(((s32)&func_80033124), 0x7000000);
            D_80059998 = 1;
            func_80035760(((s32)&func_8001A330), 0x7000000);
            func_80035760(((s32)&func_80019AA0), 0x7000000);
            func_80035760(((s32)&func_80033DD4), 0x7000000);
            func_80035760(((s32)&func_80017854), 0x7000000);
            break;
            sp2C++;
            func_80021B10(((s32)&D_8000186C), 120, 180, 80, 50);
            break;
        case 48:
            D_80059990 = 0;
            func_80035760(((s32)&func_8002E87C), 0x7000000);
            func_80035138();
            D_800560F8 = 99;
            break;
        case 6:
            break;
        case 11:
            break;
        case 47:
            D_80050704 = 2;
            break;
        case 7:
            D_8005998C = 0;
            sp30 = 0;
            for (;;) {
                if ((u32)sp30 >= 800) {
                    break;
                }
                (*(s32 *)((sp30 * 4) + ((s32)&D_800DF080))) = 0;
                sp30++;
            }
            D_80050704 = 2;
            D_80058858 = 0;
            func_800359E8(18);
            break;
        case 22:
            D_8004DFD2 = 3840;
            D_80059998 = 17;
            func_8002DCF4(28, 4);
            break;
        case 9:
            D_80058858++;
            D_80059988 = 0;
            if (D_80058858 == 1) {
                D_80058D5C = D_8005998C = (s32)func_80030A48();
                D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
                func_80034C20();
                D_80059998 = 6;
                D_800E3348 = 8;
                D_80050704 = 11;
                func_800117CC(3, 0x1002E, 20, 20);
                D_800DFE08 = func_80035040(99);
                D_800DFE0C = func_80035040(D_800DFE08);
                D_80059BA8 = 0;
                func_800359E8(19);
            } else {
                D_800560F4 = 0;
                D_800599DC = 0;
                sp30 = 0;
                for (;;) {
                    if ((u32)sp30 >= 3) {
                        break;
                    }
                    if ((*(s32 *)((sp30 * 4) + ((s32)&D_800580E8))) != 0) {
                        if ((*(s32 *)((sp30 * 4) + ((s32)&D_80058120))) > 0) {
                            D_800599DC++;
                        }
                    }
                    sp30++;
                }
                if (D_800599DC == 0) {
                    D_80050704 = 11;
                    D_800E3310 = D_800580E8 - 1;
                    D_80059998 = 38;
                    D_800560F8 = 25;
                    func_80035760(((s32)&func_800308AC), 0x7000000);
                } else {
                    D_800560F8 = 99;
                    D_80059998 = 8;
                    func_800359E8(5);
                }
            }
            break;
        case 10:
            func_80035760(((s32)&func_80017188), 0x7000000);
            D_80059998 = 9;
            if (D_80058858 == 0) {
                if ((func_8003FDF8() % 100) < 50) {
                    func_8002DCF4(18, 3);
                } else {
                    func_8002DCF4(19, 3);
                }
            } else {
                if (D_80059988 == 0) {
                    func_8002DCF4((*(s32 *)(((func_8003FDF8() % 2) * 4) + ((s32)&D_800599C0))), 2);
                } else {
                    if ((func_8003FDF8() % 100) >= 51) {
                        func_8002DCF4(22, 3);
                    } else {
                        func_8002DCF4(23, 3);
                    }
                }
            }
            D_80059988++;
            break;
        case 12:
            if ((u32)D_80058858 < 2) {
                func_80035760(((s32)&func_8002E1F0), 0x7000000);
                D_80059998 = 10;
            } else {
                D_80059998 = 32;
                (*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3698))) = D_80058D58;
                func_800359E8(31);
            }
            break;
        case 13:
            break;
        case 14:
            func_80035760(((s32)&func_800340C4), 0x7000000);
            D_80059998 = 12;
            break;
        case 17:
            D_8005998C = D_80058D5C;
            D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
            func_8002DCF4(45, 1);
            D_80059998 = 18;
            break;
        case 21:
            D_80059998 = 39;
            func_8002DCF4((*(s32 *)(((func_8003FDF8() % 2) * 4) + ((s32)&D_800599B4))), 2);
            break;
        case 36:
            D_800599E8 = 0;
            D_800599EC = 0;
            D_80059988 = 0;
            func_80005EA4(31);
            D_800560F8 = 3;
            func_80034CF0();
            func_80035104();
            D_80059998 = 4;
            break;
        case 31:
            D_80059994++;
            if ((u32)D_80059994 < 3) {
                D_8005998C = D_80059994;
                if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) != 0) {
                    D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
                    if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) > 0) {
                        D_800560F8 = 19;
                    } else {
                        D_800560F8 = 26;
                    }
                    func_80035760(((s32)&func_800308AC), 0x7000000);
                } else {
                    func_800359E8(31);
                }
            } else {
                D_80059998 = 31;
                func_800359E8(5);
            }
            break;
        case 26:
            if ((u32)D_80059994 < 3) {
                func_80031090();
            } else {
                D_800E6E4C = 0;
                D_80059984 = -1;
                func_80030B10();
                D_80058850 = 0;
                D_80058854 = 12;
                func_80028190();
                if (D_80058F00 == 0) {
                    func_80028584();
                }
                D_800599D8 = 0;
                sp2C = 0;
                for (;;) {
                    if ((u32)sp2C >= 3) {
                        break;
                    }
                    func_80030C70(sp2C);
                    sp2C++;
                }
                D_800E6E4C = 0;
                sp2C = 0;
                for (;;) {
                    if ((u32)sp2C >= 3) {
                        break;
                    }
                    if ((*(s32 *)((sp2C * 4) + ((s32)&D_800D7680))) > D_800E6E4C) {
                        D_800E6E4C = *(s32 *)((sp2C * 4) + ((s32)&D_800D7680));
                    }
                    sp2C++;
                }
                D_80059980 = 0;
                D_8005998C = *(s32 *)(((D_80059980++) * 4) + ((s32)&D_800E0DD0));
                D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800580E8))) - 1;
                D_800560F8 = 20;
                func_80035760(((s32)&func_800299A8), 0x7000000);
            }
            break;
        case 29:
            if (D_80059980 < 3) {
                D_8005998C = *(s32 *)(((D_80059980++) * 4) + ((s32)&D_800E0DD0));
                func_800359E8(30);
            } else {
                D_80059998 = 44;
                if (D_800599D8 != 0) {
                    func_800359E8(5);
                } else {
                    func_80030E9C();
                }
            }
            break;
        case 33:
            if (D_80059998 == 31) {
                D_800560F8 = 99;
                D_800599EC = 4;
                D_800599E8 = 0;
                func_80035760(((s32)&func_8002E1F0), 0x7000000);
            } else {
                if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) > 0) {
                    D_800560F8 = 99;
                    D_800599EC = 4;
                    D_800599E8 = 0;
                    func_80035760(((s32)&func_8002E87C), 0x7000000);
                } else {
                    D_80058D58 = -1;
                    func_800359E8(12);
                }
            }
        case 44:
            func_800301A8(((u32)sp28 >> 16));
            break;
        default:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
