#include "n64dk_lift.h"

struct gd_E_s16 { u8 pad[0xE]; s16 v; };
extern s32 D_8004DF30;
extern s32 D_80098F30;
extern s32 D_80098F3C;
extern s32 D_800E0F58;
extern u16 D_800E5C7C;
s32 func_8003FDD8();
s32 func_8004C638();
s32 func_8004C688();

s32 func_80005C10(void) {
    s32 sp10;

    D_800E5C7C = 0;
    sp10 = 31;
    for (;;) {
        if (sp10 <= 0) {
            break;
        }
        if ((*(s16 *)((sp10 * 2) + D_80098F3C)) != -1) {
            func_8004C688(D_8004DF30, (*(s16 *)((sp10 * 2) + D_80098F3C)));
            if (((*(s32 *)((sp10 * 4) + ((s32)&D_800E0F58))) = func_8003FDD8(D_8004DF30)) == 0) {
                func_8004C638(D_8004DF30, (*(s16 *)((sp10 * 2) + D_80098F3C)));
                (*(s16 *)((sp10 * 2) + D_80098F3C)) = -1;
            } else {
                D_800E5C7C++;
            }
        }
        sp10--;
    }
    for (sp10 = 0;;) {
        if (sp10 >= ((struct gd_E_s16 *)D_80098F30)->v) {
            break;
        }
        if ((*(s16 *)((sp10 * 2) + D_80098F3C)) == -1) {
            return sp10;
        }
        sp10++;
    }
    return -1;
}
