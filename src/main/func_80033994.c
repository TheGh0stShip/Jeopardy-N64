#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80001A00;
extern s32 D_800DDFE8;
extern s32 D_800DE028;
extern s32 D_800DF080;
extern s32 D_800E3368;
extern s32 D_800E3638;
extern s32 D_800E5C88;
extern s32 D_800E5CC0;
extern s32 D_800E8EE4;
s32 func_8000785C();
s32 func_80007F38();
s32 func_80027D88();
s32 func_8003362C();
s32 func_80033728();
s32 func_800337C0();
s32 func_800359E8();
s32 func_80035E48();
s32 func_8003FDF8();

struct n64dk_r12 func_80033994(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 pad0;
    s32 sp24;
    s32 pad1[2];
    s32 sp30;
    s32 pad2;
    s32 pad3;
    s32 sp3C;
    s32 sp40;
    s32 pad4;
    s32 sp48;

    sp3C = 0;
    sp40 = 0;
    for (;;) {
        if (((sp24 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp24 & 0xFFFF) {
        case 8:
            D_800E8EE4 = 0;
            D_800E3638 = 1;
            sp10.w[1] = 1;
            sp10.w[0] = 0;
            return sp10;
            break;
        }
    }
    if (D_800E3638 != 0) {
        D_800E3368 = func_8003FDF8() % 798;
        D_800E5CC0 = 0;
    }
    if (func_800337C0(D_800E3368) == 0) {
        D_800E3368++;
        if ((u32)D_800E3368 >= 799) {
            D_800E5CC0++;
            D_800E3368 = 0;
        }
        if ((u32)D_800E5CC0 >= 2) {
            func_80007F38(((s32)&D_80001A00));
            sp48 = 0;
            for (;;) {
                if ((u32)sp48 >= 798) {
                    break;
                }
                (*(s32 *)((sp48 * 4) + ((s32)&D_800DF080))) = 0;
                sp48++;
            }
            D_800E5CC0 = 0;
            D_800E3638 = 1;
        } else {
            D_800E3638 = 0;
        }
        sp10.w[1] = 1;
        sp10.w[0] = 0;
        return sp10;
    }
    D_800E3638 = 1;
    (*(s32 *)((D_800E3368 * 4) + ((s32)&D_800DF080))) = 1;
    (*(s32 *)((D_800E8EE4 * 4) + ((s32)&D_800DE028))) = D_800E3368;
    (*(s32 *)((D_800E8EE4 * 4) + ((s32)&D_800E5C88))) = func_8003362C((func_80027D88(D_800E3368) - 2)) + 2;
    (*(s32 *)((D_800E8EE4 * 4) + ((s32)&D_800DDFE8))) = func_80033728((*(s32 *)((D_800E8EE4 * 4) + ((s32)&D_800E5C88))));
    D_800E8EE4++;
    if ((u32)D_800E8EE4 < 13) {
        sp10.w[1] = 1;
        sp10.w[0] = 0;
        return sp10;
    }
    for (sp30 = 0;;) {
        if ((u32)sp30 >= 13) {
            break;
        }
        func_8000785C(1);
        sp30++;
    }
    func_800359E8(22);
    sp10.w[1] = 0;
    sp10.w[0] = 0;
    return sp10;
}
