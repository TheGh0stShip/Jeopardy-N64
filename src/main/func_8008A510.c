#include "n64dk_lift.h"

struct gd_8_s32 { u8 pad[0x8]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
struct gd_10_s32 { u8 pad[0x10]; s32 v; };
struct gd_11_u8 { u8 pad[0x11]; u8 v; };
struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_248_s32 { u8 pad[0x248]; s32 v; };
struct gd_260_s32 { u8 pad[0x260]; s32 v; };
extern s32 D_80074E70;
extern s32 D_80074EB0;
extern s32 D_80074EB8;
extern s32 D_80074EC8;
extern s32 D_80074ECC;
extern s32 D_80074ED0;
extern s32 D_80074ED4;
extern s32 D_80074ED8;
extern s32 D_80158968;
extern s32 D_8015896C;
extern s32 D_80158970;
extern s32 D_80158974;
extern s32 D_80158978;
s32 func_8001107C();
s32 func_80090490();
s32 func_800906C0();
s32 func_80092904();

void func_8008A510(s32 arg0, s32 arg1) {
    register s32 reg_s0;
    register s32 reg_s1;
    s32 pad0;
    s32 sp14;
    s32 sp18[2];
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;

    if (arg1 != 0) {
        sp20 = ((struct gd_10_s32 *)arg1)->v;
    }
    ((struct gd_248_s32 *)arg0)->v++;
    if (D_80074ED0 != 0) {
        if (D_80074ED8 != -1) {
            if (((struct gd_248_s32 *)arg0)->v > D_80074ED8) {
                ((struct gd_1F4_s32 *)arg0)->v = 1;
                if (D_80074EB8 != 0) {
                    func_800906C0(arg0);
                }
                return;
            }
        }
        if (((struct gd_248_s32 *)arg0)->v < D_80074ED4) {
            return;
        }
    }
    switch (D_80074EB0) {
    case 0:
        break;
    default:
        func_80092904(((s32)&D_80158974), 0);
        reg_s0 = D_80158970 - D_80158978;
        reg_s1 = D_8015896C - D_80158974;
        if (reg_s0 < 0) {
            reg_s0 = reg_s0 + 0xF4240;
            reg_s1 = reg_s1 - 1;
        }
        D_80158970 = D_80158978 + D_80158968;
        if (0xF423F < D_80158970) {
            D_80158970 = D_80158970 - 0xF4240;
            D_8015896C = D_80158974 + 1;
        } else {
            D_8015896C = D_80158974;
        }
        break;
    case -1:
        switch (D_80074ECC) {
        case -1:
            D_80074EB0 = *(s32 *)((((struct gd_11_u8 *)arg0)->v * 4) + ((s32)&D_80074E70));
            func_80092904(((s32)&D_8015896C), 0);
            D_80158968 = 0xF4240 / D_80074EB0;
            break;
        case 0:
            D_80074EB0 = 0;
            break;
        default:
            D_80074EB0 = D_80074ECC;
            func_80092904(((s32)&D_8015896C), 0);
            D_80158968 = 0xF4240 / D_80074EB0;
            break;
        }
        break;
    }
    if (arg1 == 0) {
        return;
    }
    if (D_80074EC8 == 0) {
        if ((*(s32 *)arg1) == 0) {
            sp24 = 16;
            sp28 = ((struct gd_C_s32 *)arg0)->v * sp24;
            sp2C = ((struct gd_8_s32 *)arg0)->v * sp24;
            sp14 = func_80090490(sp20, ((s32)&sp18));
            (*(s32 *)arg1) = 0;
        }
        func_8001107C(((struct gd_C_s32 *)((struct gd_260_s32 *)arg0)->v)->v);
    }
}
