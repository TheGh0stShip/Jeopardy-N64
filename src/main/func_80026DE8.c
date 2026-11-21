#include "n64dk_lift.h"

struct n64dk_e4 { u8 b[4]; };
extern s32 D_80058D38;
extern s32 D_80058D3C;
extern s32 D_80058D40;
extern s32 D_80058D44;

void func_80026DE8(s32 arg0) {
    s32 sp0;
    s32 sp8[32];
    struct n64dk_e4 *sp88;
    s32 sp8C;

    sp0 = 1;
    sp88 = (void *)((s32)&sp8);
    if ((arg0 == 0) || ((*(u8 *)arg0) == 0)) {
        return;
    }
    sp8C = arg0;
    while (!((*(u8 *)sp8C) == 0)) {
        while (((*(u8 *)sp8C) != 0) && ((*(u8 *)sp8C) == 32)) {
            (*(s8 *)sp8C) = 0;
            sp8C++;
        }
        if ((*(u8 *)sp8C) != 0) {
            sp8[sp0++] = sp8C;
        }
        for (; ((*(u8 *)sp8C) != 0) && ((*(u8 *)sp8C) != 32); sp8C++) {
        }
    }
    for (; (sp0 >= 2) && ((*(u8 *)(*(s32 *)(((s32)sp88) + 4))) == 45); sp88++) {
        switch (*(u8 *)((*(s32 *)(((s32)sp88) + 4)) + 1)) {
        case 100:
            D_80058D3C = 1;
            break;
        case 118:
            D_80058D38 = 1;
            break;
        case 115:
            D_80058D40 = 1;
            break;
        case 108:
            D_80058D44 = 1;
            break;
        default:
            break;
        }
        sp0--;
    }
}
