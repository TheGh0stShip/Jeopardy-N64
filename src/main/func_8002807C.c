#include "n64dk_lift.h"

struct n64dk_a800DE37C { s8 m0; };
extern struct n64dk_a800DE37C D_800DE37C[];
extern s32 D_80058850;
extern s32 D_80058854;
s32 func_80027DE0();

s32 func_8002807C(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    sp10 = 0;
    sp14 = 0;
    sp18 = func_80027DE0(D_80058854, D_80058850);
    for (;;) {
        if ((*(u8 *)(sp18 + sp10)) == 13) {
            break;
        }
        sp10++;
    }
    sp10 = sp10 + 2;
    for (;;) {
        if ((*(u8 *)(sp18 + sp10)) == 13) {
            break;
        }
        D_800DE37C[sp14++].m0 = *(u8 *)((sp10++) + sp18);
    }
    (*(s8 *)(sp14 + ((s32)&D_800DE37C))) = 0;
    return (s32)&D_800DE37C;
}
