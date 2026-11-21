#include "n64dk_lift.h"

extern s32 D_800D7710;

s32 func_8001F7C8(s32 arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 pad0;
    s8 pad1;

    sp0 = 0;
    sp4 = 0;
    sp8 = 0;
    for (;;) {
        if ((*(u8 *)((sp4++) + arg0)) == 13) {
            break;
        }
    }
    sp4++;
    for (;;) {
        if ((*(u8 *)(arg0 + sp4)) == 13) {
            break;
        }
        (*(s8 *)(sp8 + ((s32)&D_800D7710))) = *(u8 *)(arg0 + sp4);
        if ((*(u8 *)(arg0 + sp4)) == 124) {
            (*(s8 *)(sp8 + ((s32)&D_800D7710))) = 32;
        }
        sp8++;
        sp4++;
    }
    (*(s8 *)(sp8 + ((s32)&D_800D7710))) = 0;
    return 0;
}
