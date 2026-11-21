#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern s32 D_80058850;
extern s32 D_80058858;
extern s32 D_800599E8;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E5C88;
s32 func_8001F900();
s32 func_8001FBF8();

void func_800204D4(void) {
    s32 pad0[2];
    s32 sp20;

    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0x6000000;
    ((struct gd_4_s32 *)sp20)->v = (s32)&D_010942B8;
    sp20 = (s32)D_800E0F4C++;
    (*(s32 *)sp20) = 0xE7000000;
    ((struct gd_4_s32 *)sp20)->v = 0;
    if ((u32)D_80058858 < 2) {
        func_8001FBF8(136, 16, 151, 90, func_8001F900((*(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88))), D_80058850));
        return;
    }
    func_8001FBF8(136, 16, 151, 90, func_8001F900((*(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88))), 0));
}
