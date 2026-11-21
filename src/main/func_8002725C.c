#include "n64dk_lift.h"

struct n64dk_a800D7D34 { s32 m0; u8 pad4[0x50]; };
extern struct n64dk_a800D7D34 D_800D7D34[];
extern s32 D_800015B0;
extern s32 D_800015CC;
extern s32 D_800D7D28;
extern s32 D_800E69F4;
s32 func_80008168();

s32 func_8002725C(void) {
    s32 sp10;

    if (D_800E69F4 == 300) {
        func_80008168(((s32)&D_800015B0));
        return 0;
    }
    for (sp10 = 1;;) {
        if (sp10 >= 300) {
            break;
        }
        if (D_800D7D34[sp10].m0 == 0) {
            D_800E69F4++;
            return (sp10 * 84) + ((s32)&D_800D7D28);
        }
        sp10++;
    }
    func_80008168(((s32)&D_800015CC));
    return 0;
}
