#include "n64dk_lift.h"

struct gd_D0_s32 { u8 pad[0xD0]; s32 v; };
struct gd_134_s32 { u8 pad[0x134]; s32 v; };
struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
struct n64dk_a800744C0 { s32 m0; s32 m4; };
extern struct n64dk_a800744C0 D_800744C0[];
struct n64dk_a800745C0 { s32 m0; s32 m4; };
extern struct n64dk_a800745C0 D_800745C0[];
struct n64dk_a80074640 { s32 m0; s32 m4; };
extern struct n64dk_a80074640 D_80074640[];
struct n64dk_a80074740 { s32 m0; s32 m4; };
extern struct n64dk_a80074740 D_80074740[];
extern s32 D_800732A8;
extern s32 D_80074840;
extern s32 D_80074A40;
extern s32 D_80074A60;
extern s32 D_80074A68;
extern s32 D_80074A70;
extern s32 D_80074C70;
s32 func_80076178();

void func_80085D84(s32 arg0, s32 arg1) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;

    if (((struct gd_1E8_s32 *)arg1)->v < 100) {
        func_80076178(arg1);
    }
    if (((struct gd_134_s32 *)arg1)->v != 0) {
        if (arg0 < 4) {
            sp24 = ((struct gd_1E0_s32 *)arg1)->v + 5;
            if (sp24 >= 33) {
                sp24 = sp24 - 32;
                sp20 = ((u32)(((struct gd_234_s32 *)arg1)->v & 0xF8000000) >> 27) | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - sp24));
            } else {
                sp20 = (u32)(((struct gd_234_s32 *)arg1)->v & 0xF8000000) >> 27;
            }
            if ((u32)sp20 < 31) {
                sp14 = D_800744C0[sp20].m0;
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + D_800744C0[sp20].m4;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << D_800744C0[sp20].m4;
                }
            } else {
                sp24 = ((struct gd_1E0_s32 *)arg1)->v + 9;
                if (sp24 >= 33) {
                    sp24 = sp24 - 32;
                    sp20 = ((u32)(((struct gd_234_s32 *)arg1)->v & 0xFF800000) >> 23) | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - sp24));
                } else {
                    sp20 = (u32)(((struct gd_234_s32 *)arg1)->v & 0xFF800000) >> 23;
                }
                sp20 = sp20 - 496;
                sp14 = D_800745C0[sp20].m0;
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + D_800745C0[sp20].m4;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << D_800745C0[sp20].m4;
                }
            }
            if (sp14 != 0) {
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp14;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    if (((struct gd_1E0_s32 *)arg1)->v != 0) {
                        ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)((struct gd_1E4_s32 *)arg1)->v) >> (u32)(sp14 - ((struct gd_1E0_s32 *)arg1)->v));
                    }
                    sp10 = (u32)(((struct gd_234_s32 *)arg1)->v & (*(s32 *)((sp14 * 4) + ((s32)&D_800732A8)))) >> (u32)(32 - sp14);
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    sp10 = (u32)(((struct gd_234_s32 *)arg1)->v & (*(s32 *)((sp14 * 4) + ((s32)&D_800732A8)))) >> (u32)(32 - sp14);
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp14;
                }
            }
        } else {
            sp20 = ((struct gd_1E0_s32 *)arg1)->v + 5;
            if (sp20 >= 33) {
                sp20 = sp20 - 32;
                sp24 = ((u32)(((struct gd_234_s32 *)arg1)->v & 0xF8000000) >> 27) | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - sp20));
            } else {
                sp24 = (u32)(((struct gd_234_s32 *)arg1)->v & 0xF8000000) >> 27;
            }
            if ((u32)sp24 < 31) {
                sp14 = D_80074640[sp24].m0;
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + D_80074640[sp24].m4;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << D_80074640[sp24].m4;
                }
            } else {
                sp20 = ((struct gd_1E0_s32 *)arg1)->v + 10;
                if (sp20 >= 33) {
                    sp20 = sp20 - 32;
                    sp24 = ((u32)(((struct gd_234_s32 *)arg1)->v & 0xFFC00000) >> 22) | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - sp20));
                } else {
                    sp24 = (u32)(((struct gd_234_s32 *)arg1)->v & 0xFFC00000) >> 22;
                }
                sp24 = sp24 - 992;
                sp14 = D_80074740[sp24].m0;
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + D_80074740[sp24].m4;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << D_80074740[sp24].m4;
                }
            }
            if (sp14 != 0) {
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp14;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    if (((struct gd_1E0_s32 *)arg1)->v != 0) {
                        ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)((struct gd_1E4_s32 *)arg1)->v) >> (u32)(sp14 - ((struct gd_1E0_s32 *)arg1)->v));
                    }
                    sp10 = (u32)(((struct gd_234_s32 *)arg1)->v & (*(s32 *)((sp14 * 4) + ((s32)&D_800732A8)))) >> (u32)(32 - sp14);
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    sp10 = (u32)(((struct gd_234_s32 *)arg1)->v & (*(s32 *)((sp14 * 4) + ((s32)&D_800732A8)))) >> (u32)(32 - sp14);
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp14;
                }
            }
        }
    } else {
        if (((struct gd_1E0_s32 *)arg1)->v != 0) {
            sp2C = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
        } else {
            sp2C = ((struct gd_234_s32 *)arg1)->v;
        }
        sp20 = (u32)sp2C >> 24;
        if ((u32)sp20 >= 4) {
            sp28 = *(u16 *)((sp20 * 2) + ((s32)&D_80074C70));
            sp18 = (u32)sp28 >> 10;
            if (sp18 != 62) {
                if (sp18 != 61) {
                    sp30 = (sp28 & 15) + 2;
                    sp1C = (u32)(sp28 & 1008) >> 4;
                    sp28 = (u32)sp2C >> (u32)(32 - sp30);
                    sp28 = sp28 & 1;
                    if (sp28 != 0) {
                        sp1C = -sp1C;
                    }
                } else {
                    sp30 = (sp28 & 15) + 1;
                    sp24 = (u32)sp2C >> (u32)(18 - sp30);
                    sp24 = sp24 & 0x3FFF;
                    sp18 = (u32)sp24 >> 8;
                    sp24 = sp24 & 255;
                    if (sp24 == 0) {
                        sp1C = (u32)sp2C >> (u32)(10 - sp30);
                        sp1C = sp1C & 255;
                        sp30 = sp30 + 22;
                    } else {
                        if (sp24 != 128) {
                            sp30 = sp30 + 14;
                            sp1C = (sp24 << 24) >> 24;
                        } else {
                            sp1C = (u32)sp2C >> (u32)(10 - sp30);
                            sp1C = sp1C & 255;
                            sp30 = sp30 + 22;
                            sp1C = sp1C - 256;
                        }
                    }
                }
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp30;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp30;
                }
            }
        } else {
            switch ((u32)sp20) {
            case 2:
                sp20 = (u32)sp2C >> 22;
                sp28 = *(u16 *)(((sp20 & 3) * 2) + ((s32)&D_80074A60));
                break;
            case 3:
                sp20 = (u32)sp2C >> 22;
                sp28 = *(u16 *)(((sp20 & 3) * 2) + ((s32)&D_80074A68));
                break;
            case 1:
                sp20 = (u32)sp2C >> 20;
                sp28 = *(u16 *)(((sp20 & 15) * 2) + ((s32)&D_80074A40));
                break;
            default:
                sp20 = (u32)sp2C >> 16;
                sp28 = *(u16 *)(((sp20 & 255) * 2) + ((s32)&D_80074840));
            }
            sp18 = (u32)sp28 >> 10;
            sp1C = (u32)(sp28 & 1008) >> 4;
            sp30 = (sp28 & 15) + 2;
            sp28 = (u32)sp2C >> (u32)(32 - sp30);
            sp28 = sp28 & 1;
            if (sp28 != 0) {
                sp1C = -sp1C;
            }
            ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp30;
            if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                ((struct n64dk_p1E4_4 *)arg1)->v++;
                ((struct gd_1E8_s32 *)arg1)->v--;
                ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
            } else {
                ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp30;
            }
        }
    }
    if (((struct gd_D0_s32 *)arg1)->v != 4) {
        for (;;) {
            goto L892;
            break;
L892: ;
            if (((struct gd_1E0_s32 *)arg1)->v != 0) {
                sp24 = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
            } else {
                sp24 = ((struct gd_234_s32 *)arg1)->v;
            }
            sp2C = (u32)sp24 >> 24;
            if ((u32)sp2C >= 4) {
                sp28 = *(u16 *)((sp2C * 2) + ((s32)&D_80074A70));
                sp18 = (u32)sp28 >> 10;
                if (sp18 != 62) {
                    if (sp18 != 61) {
                        sp20 = (sp28 & 15) + 2;
                        sp1C = (u32)(sp28 & 1008) >> 4;
                        sp28 = (u32)sp24 >> (u32)(32 - sp20);
                        sp28 = sp28 & 1;
                        if (sp28 != 0) {
                            sp1C = -sp1C;
                        }
                    } else {
                        sp20 = (sp28 & 15) + 1;
                        sp30 = (u32)sp24 >> (u32)(18 - sp20);
                        sp30 = sp30 & 0x3FFF;
                        sp18 = (u32)sp30 >> 8;
                        sp30 = sp30 & 255;
                        if (sp30 == 0) {
                            sp1C = (u32)sp24 >> (u32)(10 - sp20);
                            sp1C = sp1C & 255;
                            sp20 = sp20 + 22;
                        } else {
                            if (sp30 != 128) {
                                sp20 = sp20 + 14;
                                sp1C = (sp30 << 24) >> 24;
                            } else {
                                sp1C = (u32)sp24 >> (u32)(10 - sp20);
                                sp1C = sp1C & 255;
                                sp20 = sp20 + 22;
                                sp1C = sp1C - 256;
                            }
                        }
                    }
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp20;
                    if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                        ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                        ((struct n64dk_p1E4_4 *)arg1)->v++;
                        ((struct gd_1E8_s32 *)arg1)->v--;
                        ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                    } else {
                        ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp20;
                    }
                }
            } else {
                switch ((u32)sp2C) {
                case 2:
                    sp2C = (u32)sp24 >> 22;
                    sp28 = *(u16 *)(((sp2C & 3) * 2) + ((s32)&D_80074A60));
                    break;
                case 3:
                    sp2C = (u32)sp24 >> 22;
                    sp28 = *(u16 *)(((sp2C & 3) * 2) + ((s32)&D_80074A68));
                    break;
                case 1:
                    sp2C = (u32)sp24 >> 20;
                    sp28 = *(u16 *)(((sp2C & 15) * 2) + ((s32)&D_80074A40));
                    break;
                default:
                    sp2C = (u32)sp24 >> 16;
                    sp28 = *(u16 *)(((sp2C & 255) * 2) + ((s32)&D_80074840));
                }
                sp18 = (u32)sp28 >> 10;
                sp1C = (u32)(sp28 & 1008) >> 4;
                sp20 = (sp28 & 15) + 2;
                sp28 = (u32)sp24 >> (u32)(32 - sp20);
                sp28 = sp28 & 1;
                if (sp28 != 0) {
                    sp1C = -sp1C;
                }
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + sp20;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << sp20;
                }
            }
            if ((u32)sp18 >= 62) {
                break;
            }
        }
        ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + 2;
        if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
            ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
            ((struct n64dk_p1E4_4 *)arg1)->v++;
            ((struct gd_1E8_s32 *)arg1)->v--;
            ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
            return;
        }
        ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << 2;
    }
}
