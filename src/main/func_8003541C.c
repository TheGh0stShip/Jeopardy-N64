#include "n64dk_lift.h"

struct n64dk_a800E1008 { s32 m0; u8 pad4[0x7C]; };
extern struct n64dk_a800E1008 D_800E1008[];
extern s32 D_80001AA0;
extern s32 D_80001AB8;
extern s32 D_800E90AC;
s32 func_80008168();

s32 func_8003541C(void) {
    s32 sp10;

    if (D_800E90AC == 69) {
        func_80008168(((s32)&D_80001AA0));
        return 0;
    }
    for (sp10 = 1;;) {
        if (sp10 >= 70) {
            break;
        }
        if (D_800E1008[sp10].m0 == 0) {
            D_800E90AC++;
            return (sp10 * 128) + ((s32)&D_800E1008);
        }
        sp10++;
    }
    func_80008168(((s32)&D_80001AB8));
    return 0;
}
