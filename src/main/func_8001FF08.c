#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
struct n64dk_a800DE160 { u8 m0; u8 pad1[0x35]; };
extern struct n64dk_a800DE160 D_800DE160[];
extern s32 D_010942B8;
extern s32 D_800560FC;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E8F20;
extern s32 D_800E8F68;
s32 func_80011AD8();
s32 func_80012B08(s32, f32, f32);
s32 func_8001AB70();

void func_8001FF08(void) {
    s32 sp20;
    s32 sp24;

    func_8001AB70(0, 0, 320, 240, 0, 0, 0, D_800560FC);
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0x6000000;
    ((struct gd_4_s32 *)sp24)->v = (s32)&D_010942B8;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0x200000;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xBA001402;
    ((struct gd_4_s32 *)sp24)->v = 0;
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xB900031D;
    ((struct gd_4_s32 *)sp24)->v = 0x5041C8;
    func_80011AD8(1);
    sp24 = (s32)D_800E0F4C++;
    (*(s32 *)sp24) = 0xFA000000;
    ((struct gd_4_s32 *)sp24)->v = -1;
    sp20 = 0;
    for (;;) {
        if (sp20 >= 18) {
            return;
        }
        if ((*(s32 *)((sp20 * 4) + ((s32)&D_800E8F68))) < 245) {
            if (D_800DE160[sp20].m0 != 0) {
                func_80012B08(((sp20 * 54) + ((s32)&D_800DE160)), ((f32)(*(s32 *)((sp20 * 4) + ((s32)&D_800E8F20)))), ((f32)(*(s32 *)((sp20 * 4) + ((s32)&D_800E8F68)))));
            }
        }
        sp20++;
    }
}
