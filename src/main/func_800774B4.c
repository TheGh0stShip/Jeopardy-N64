#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_1F8_s32 { u8 pad[0x1F8]; s32 v; };
struct gd_1FC_s32 { u8 pad[0x1FC]; s32 v; };
struct gd_200_s32 { u8 pad[0x200]; s32 v; };
struct gd_20C_s32 { u8 pad[0x20C]; s32 v; };
struct gd_214_s32 { u8 pad[0x214]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
struct gd_25C_s32 { u8 pad[0x25C]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
struct n64dk_e4 { u8 b[4]; };
struct n64dk_p1E4_4 { u8 pad[0x1E4]; struct n64dk_e4 *v; };
extern s32 D_80074EB8;
extern s32 D_80074EC0;
s32 func_80076178();
s32 func_80076260();
s32 func_800765F8();
s32 func_80077CF4();
s32 func_80078F08();
s32 func_80079A50();
s32 func_8007A760();
s32 func_8007ABC8();
s32 func_80083C90();
s32 func_8008A510();
s32 func_800906C0();
s32 func_8009070C();

s32 func_800774B4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    if (arg1 == 0) {
        return 0;
    }
    if (arg2 != 0) {
        ((struct gd_1F8_s32 *)arg1)->v = -1;
        ((struct gd_1FC_s32 *)arg1)->v = 0;
        ((struct gd_200_s32 *)arg1)->v = 0;
        ((struct gd_20C_s32 *)arg1)->v = 0;
        ((struct gd_214_s32 *)arg1)->v = 0;
        func_800765F8(arg1);
        if (((struct gd_1E8_s32 *)arg1)->v < 2) {
            func_80076178(arg1);
        }
        if (((struct gd_1E0_s32 *)arg1)->v != 0) {
            sp10 = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
        } else {
            sp10 = ((struct gd_234_s32 *)arg1)->v;
        }
        if (sp10 != 435) {
            return 0;
        }
    } else {
        ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
    }
    if (((struct gd_1E8_s32 *)arg1)->v < 2) {
        func_80076178(arg1);
    }
    if (((struct gd_1E0_s32 *)arg1)->v != 0) {
        sp10 = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
    } else {
        sp10 = ((struct gd_234_s32 *)arg1)->v;
    }
    switch ((u32)sp10) {
    case 439:
    case 441:
        if (((struct gd_25C_s32 *)arg1)->v != 0) {
            ((struct gd_260_s32 *)arg1)->v = ((struct gd_25C_s32 *)arg1)->v;
            func_8008A510(arg1, arg3);
        }
        if (D_80074EC0 == 0) {
        }
        ((struct gd_1F4_s32 *)arg1)->v = 1;
        if (D_80074EB8 != 0) {
            func_800906C0(arg1);
        }
        goto L395;
        break;
    case 435:
        if (func_80077CF4(arg1, arg3) != 1) {
            goto L392;
        }
        if (((struct gd_20C_s32 *)arg1)->v > 0) {
            func_8009070C(arg1);
        }
        goto L395;
    case 440:
        if (func_80078F08(arg1) != 1) {
            goto L392;
        }
        goto L395;
    case 256:
        sp18 = func_80079A50(arg1, arg0);
        if (sp18 == -10) {
            func_800765F8(arg1);
            for (;;) {
                if (func_80076260(32, 256, arg1) != 0) {
                    break;
                }
                if (func_80076260(32, 440, arg1) != 0) {
                    break;
                } else {
                    if (func_80076260(32, 439, arg1) != 0) {
                        break;
                    }
                }
                if (arg1 == 0) {
                }
                if (((struct gd_1E8_s32 *)arg1)->v < 2) {
                    func_80076178(arg1);
                }
                ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v + 24;
                if ((((struct gd_1E0_s32 *)arg1)->v & 32) != 0) {
                    ((struct gd_1E8_s32 *)arg1)->v--;
                    ((struct gd_1E0_s32 *)arg1)->v = ((struct gd_1E0_s32 *)arg1)->v - 32;
                    ((struct n64dk_p1E4_4 *)arg1)->v++;
                    ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
                } else {
                    ((struct gd_234_s32 *)arg1)->v = ((struct gd_234_s32 *)arg1)->v << 24;
                }
                func_800765F8(arg1);
            }
            goto L395;
        } else {
            if (sp18 != 1) {
                goto L392;
            }
        }
        if (func_8007A760(arg1) != 1) {
            goto L392;
        }
        break;
    case 436:
        if (arg1 == 0) {
        }
        if (((struct gd_1E8_s32 *)arg1)->v < 2) {
            func_80076178(arg1);
        }
        ((struct n64dk_p1E4_4 *)arg1)->v++;
        ((struct gd_1E8_s32 *)arg1)->v--;
        ((struct gd_234_s32 *)arg1)->v = (*(s32 *)((struct gd_1E4_s32 *)arg1)->v) << ((struct gd_1E0_s32 *)arg1)->v;
        func_800765F8(arg1);
        goto L395;
    default:
        if ((u32)sp10 >= 257) {
            if ((u32)sp10 < 432) {
                if (func_8007A760(arg1) != 1) {
                    goto L392;
                }
            }
        }
        break;
    }
    for (sp14 = 0;;) {
        if (sp14 >= 100) {
            break;
        }
        if (func_80076260(23, 0, arg1) == 0) {
            if (func_8007ABC8(arg1) != 1) {
                goto L392;
            }
        } else {
            func_800765F8(arg1);
            if (((struct gd_1E8_s32 *)arg1)->v < 2) {
                func_80076178(arg1);
            }
            if (((struct gd_1E0_s32 *)arg1)->v != 0) {
                sp10 = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
            } else {
                sp10 = ((struct gd_234_s32 *)arg1)->v;
            }
            if (((u32)sp10 < 257) || ((u32)sp10 >= 432)) {
                if (sp10 != 436) {
                    func_80083C90(arg1, arg3);
                }
            }
            goto L395;
        }
        sp14++;
    }
    if (func_80076260(23, 0, arg1) != 0) {
        func_800765F8(arg1);
        if (((struct gd_1E8_s32 *)arg1)->v < 2) {
            func_80076178(arg1);
        }
        if (((struct gd_1E0_s32 *)arg1)->v != 0) {
            sp10 = ((struct gd_234_s32 *)arg1)->v | ((u32)(*(s32 *)(((struct gd_1E4_s32 *)arg1)->v + 4)) >> (u32)(32 - ((struct gd_1E0_s32 *)arg1)->v));
        } else {
            sp10 = ((struct gd_234_s32 *)arg1)->v;
        }
        if (((u32)sp10 < 257) || ((u32)sp10 >= 432)) {
            func_80083C90(arg1, arg3);
        }
    }
    goto L395;
L392: ;
    func_800765F8(arg1);
    goto L395;
L395: ;
    return arg1;
}
