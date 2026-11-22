typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_4_u16 { u8 pad[0x4]; u16 v; };
struct gd_6_u16 { u8 pad[0x6]; u16 v; };
struct gd_13_u8 { u8 pad[0x13]; u8 v; };
struct gd_28_s32 { u8 pad[0x28]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct Ent { u16 a; u16 b[7]; };
struct Obj { u8 pad[0x28]; struct Ent *tbl; };
struct Font { u8 pad[0xA8]; u8 w[1]; };
extern u16 D_80055B60;
extern u16 D_80055B62;
extern s32 D_80055B64;
extern s32 D_800DE540;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E333C;
extern u16 D_800E333E;
extern s32 D_800E3724;
extern u16 D_800E3B34;
s32 func_80011A7C();
s32 func_80012CA4();
s32 func_80014090();
s32 func_80014854();

s32 func_800148DC(register s32 arg0, register s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    register s32 reg_s2;
    register s32 reg_s3;
    u16 sp10;
    u16 sp12;
    u16 sp14;
    u16 sp16;
    s32 sp18;
    s32 pad0;
    s32 pad1[4];
    u16 sp30;
    u16 sp32;
    u16 sp34;
    u16 sp36;
    s16 pad2;
    u16 sp3A;
    s16 pad3;
    s16 sp3E;
    s16 sp40;
    u16 sp42;
    u16 sp44;
    u16 sp46;
    u16 sp48;
    u16 sp4A;
    s32 sp4C;
    s32 sp50;
    s32 sp54;
    u8 sp58;
    s8 pad4;
    s16 pad5;
    s32 pad6;
    s32 pad7[32];
    s32 spE0;

    reg_s2 = arg6;
    reg_s3 = arg7;
    sp10 = arg0;
    sp12 = arg1;
    sp14 = reg_s2;
    sp16 = reg_s3;
    sp18 = func_80011A7C(sp10);
    if (((*(u16 *)(((struct gd_28_s32 *)sp18)->v + (sp12 * 16))) == 0xFFFF) || (((*(s16 *)arg4) == 0) || ((*(s16 *)arg3) == 0))) {
        (*(s16 *)arg2) = 0x4000;
        return 0;
    }
    D_800DE540 = func_80014854((*(u16 *)(((struct gd_28_s32 *)sp18)->v + (sp12 * 16))));
    sp30 = 0;
    sp48 = 0;
    sp34 = 0;
    sp32 = 0;
    D_800E3B34 = ((struct gd_4_u16 *)sp18)->v;
    sp4C = (s32)&sp58;
    sp3E = sp16;
    sp40 = sp14;
    sp42 = ((struct gd_6_u16 *)D_800E3724)->v;
    sp44 = 0;
    sp4A = 1;
    if ((*(s16 *)arg5) >= 0) {
        sp46 = 1;
    } else {
        sp46 = 0;
    }
    if ((*(s16 *)arg2) == 0) {
        sp36 = 1;
    } else {
        sp36 = 0;
    }
    for (;;) {
        sp3A = func_80014090();
        if ((u32)0x7FFF < (u32)sp3A) {
            switch (sp3A) {
            case 0x8000:
                if (sp32 != 0) {
                    sp32--;
                    D_800DE540 = *(s32 *)(((sp32 * 4) + ((s32)&sp10)) + 16);
                } else {
                    if (sp4C != ((s32)&sp58)) {
                        if (sp36 == 1) {
                            (*(s8 *)sp4C) = 0;
                            func_80012CA4(((s32)&sp58), sp40, sp3E);
                            (*(s16 *)arg3)--;
                            (*(s16 *)arg5) = (*(u16 *)arg5) - sp42;
                        }
                        sp44 = 1;
                    }
                    if (sp44 == 1) {
                        sp30++;
                        if (sp36 == 1) {
                            sp48++;
                        }
                    }
                    (*(s16 *)arg2) = sp48;
                    return sp30;
                }
                break;
            case 0x8010:
            case 0x8011:
            case 0x8012:
            case 0x8013:
            case 0x8014:
            case 0x8015:
            case 0x8016:
            case 0x8017:
            case 0x8018:
            case 0x8019:
                (*(s32 *)(((sp32 * 4) + ((s32)&sp10)) + 16)) = D_800DE540;
                sp32++;
                D_800DE540 = func_80014854(((struct Obj *)sp18)->tbl[sp12].b[sp34]);
                sp34++;
                break;
            case 0x800D:
                sp30++;
                if (sp4C == ((s32)&sp58)) {
                    if (sp36 == 1) {
                        sp3E = ((u16)sp3E) + sp42;
                        sp48++;
                    }
                } else {
                    if (D_800E333C == 32) {
                        if (sp36 == 1) {
                            (*(s8 *)sp4C) = 0;
                            func_80012CA4(((s32)&sp58), sp40, sp3E);
                            sp3E = ((u16)sp3E) + sp42;
                            sp48++;
                        }
                        sp4C = (s32)&sp58;
                    } else {
                        sp50 = sp4C - 1;
                        while (((*(u8 *)sp50) != 32) && (sp50 != ((s32)&sp58))) {
                            sp50--;
                        }
                        if (sp50 != ((s32)&sp58)) {
                            (*(s8 *)sp50) = 0;
                            if (sp36 == 1) {
                                func_80012CA4(((s32)&sp58), sp40, sp3E);
                                sp3E = ((u16)sp3E) + sp42;
                                sp48++;
                            }
                            sp54 = (s32)&sp58;
                            sp50++;
                            while (!((u32)sp50 >= (u32)sp4C)) {
                                (*(s8 *)(sp54++)) = *(u8 *)(sp50++);
                            }
                            sp4C = sp54;
                        } else {
                            if (sp36 == 1) {
                                sp48++;
                                sp3E = ((u16)sp3E) + sp42;
                            }
                            if (sp58 == 32) {
                                sp50 = sp54 = (s32)&sp58;
                                while (!((*(u8 *)sp50) != 32)) {
                                    sp50++;
                                }
                                for (; !(sp50 == sp4C); (*(s8 *)(sp54++)) = *(u8 *)(sp50++)) {
                                }
                                sp4C = sp54;
                            }
                        }
                    }
                }
                if ((*(s16 *)arg2) > 0) {
                    (*(s16 *)arg2)--;
                    if ((*(s16 *)arg2) == 0) {
                        sp36 = 1;
                    }
                } else {
                    if ((*(s16 *)arg3) > 0) {
                        (*(s16 *)arg3)--;
                        if ((*(s16 *)arg3) == 0) {
                            (*(s16 *)arg2) = sp48 | 0x1000;
                            return sp30;
                        }
                    }
                    (*(s16 *)arg5) = (*(u16 *)arg5) - sp42;
                    if (sp46 == 1) {
                        if ((*(s16 *)arg5) < ((struct gd_6_u16 *)D_800E3724)->v) {
                            (*(s16 *)arg2) = sp48 | 0x3000;
                            return sp30;
                        }
                    }
                }
                D_800E3B34 = ((struct gd_4_u16 *)sp18)->v;
                if (D_80055B62 != 0) {
                    D_800E3B34 = (D_800E3B34 - 1) - ((u32)((struct gd_6_u16 *)D_800E3724)->v / (u32)D_80055B62);
                }
                sp50 = (s32)&sp58;
                while (!(sp50 == sp4C)) {
                    D_800E3B34 = D_800E3B34 - (((struct Font *)D_800E3724)->w[*(u8 *)sp50] + ((struct gd_4_u16 *)D_800E3724)->v);
                    sp50++;
                    if ((*(s16 *)&D_800E3B34) < 0) {
                    }
                }
                sp40 = sp14;
                sp42 = ((struct gd_6_u16 *)D_800E3724)->v;
                sp44 = 0;
                sp4A = 1;
                break;
            case 0x8007:
            case 0x8008:
            case 0x8009:
            case 0x800A:
            case 0x800B:
            case 0x800C:
            case 0x800F:
                if (sp4C != ((s32)&sp58)) {
                    (*(s8 *)sp4C) = 0;
                    if (sp36 == 1) {
                        func_80012CA4(((s32)&sp58), sp40, sp3E);
                    }
                    sp44 = 1;
                    sp4C = (s32)&sp58;
                    sp40 = sp14 + ((struct gd_4_u16 *)sp18)->v - D_800E3B34;
                }
                switch (sp3A) {
                case 0x800F:
                    D_800E3724 = *(s32 *)((D_800E333C * 4) + ((s32)&D_80055B64));
                    if ((u32)sp42 < (u32)((struct gd_6_u16 *)D_800E3724)->v) {
                        sp42 = ((struct gd_6_u16 *)D_800E3724)->v;
                    }
                    break;
                case 0x8009:
                    D_80055B62 = D_800E333E;
                    if (D_80055B62 != 0) {
                        D_800E3B34 = (D_800E3B34 - 1) - ((u32)((struct gd_6_u16 *)D_800E3724)->v / (u32)D_80055B62);
                    }
                    break;
                case 0x800C:
                    spE0 = (s32)D_800E0F4C++;
                    (*(s32 *)spE0) = 0xFA000000;
                    ((struct gd_4_s32 *)spE0)->v = ((((((u32)D_800E333C >> 16) & 255) << 24) | ((((u32)D_800E333C >> 8) & 255) << 16)) | ((D_800E333C & 255) << 8)) | ((struct gd_13_u8 *)sp18)->v;
                    break;
                case 0x8007:
                    D_80055B60 = D_80055B60 & 0xFFF7u;
                    break;
                case 0x8008:
                    D_80055B60 = D_80055B60 | 8;
                    break;
                case 0x800A:
                    D_80055B60 = D_80055B60 & 0xFFFDu;
                    break;
                case 0x800B:
                    D_80055B60 = D_80055B60 | 2;
                    break;
                }
                break;
            default:
                break;
            }
        } else {
            if ((sp4A != 1) || (sp3A != 32)) {
                (*(s8 *)(sp4C++)) = sp3A;
                sp4A = 0;
            }
            if ((*(s16 *)arg4) > 0) {
                (*(s16 *)arg4)--;
                if ((*(s16 *)arg4) == 0) {
                    if (sp36 == 1) {
                        (*(s8 *)sp4C) = 0;
                        func_80012CA4(((s32)&sp58), sp40, sp3E);
                        (*(s16 *)arg3)--;
                        (*(s16 *)arg5) = (*(u16 *)arg5) - sp42;
                        sp48++;
                    }
                    (*(s16 *)arg2) = sp48 | 0x2000;
                    return (sp30 + 1) & 0xFFFF;
                }
            }
        }
        continue;
        return;
    }
}
