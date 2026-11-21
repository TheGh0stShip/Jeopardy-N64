#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E5C58;
extern s32 D_800E5C5C;
s32 func_80020700();

void func_8001BBB8(void) {
    s32 pad0;
    s32 sp1C;
    s32 sp20;

    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xE7000000;
    ((struct gd_4_s32 *)sp20)->v = 0;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0x6000000;
    ((struct gd_4_s32 *)sp20)->v = (s32)&D_010942B8;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xBA001402;
    ((struct gd_4_s32 *)sp20)->v = 0x200000;
    sp1C = 0;
    for (;;) {
        if (sp1C >= 8) {
            return;
        }
        func_80020700(128, ((sp1C * 16) + 30), 64, 32, (*(s32 *)((sp1C * 4) + ((s32)&D_800E5C58))));
        func_80020700(192, ((sp1C * 16) + 30), 64, 32, (*(s32 *)((sp1C * 4) + ((s32)&D_800E5C5C))));
        sp1C = sp1C + 2;
    }
}
