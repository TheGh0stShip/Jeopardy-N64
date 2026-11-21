#include "n64dk_lift.h"

struct gd_6_u16 { u8 pad[0x6]; u16 v; };
extern u16 D_80055C1C;
extern s32 D_800E3694;
extern u16 D_800E3722;
extern s32 D_800E3724;
extern u16 D_800E3742;
s32 func_8000A7A0(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, f32, f32);
s32 func_80011D18();

void func_80012B08(s32 arg0, f32 arg1, f32 arg2) {
    s32 sp40;
    u16 sp44;
    u16 sp46;

    sp40 = func_80011D18(arg0);
    switch (*(u16 *)D_800E3724) {
    case 0:
        sp44 = 0;
        sp46 = 2;
        break;
    case 1:
        sp44 = 3;
        sp46 = 1;
        break;
    case 2:
        sp44 = 3;
        sp46 = 0;
        break;
    default:
        return;
    }
    if (D_80055C1C == 1) {
        arg2 = arg2 + ((f32)(((struct gd_6_u16 *)D_800E3724)->v - D_800E3694));
        D_80055C1C = 0;
    }
    func_8000A7A0(sp40, sp44, sp46, 0, 256, D_800E3742, D_800E3722, 128, 8, 0, 0, (*(s16 *)&D_800E3742), (*(s16 *)&D_800E3722), arg1, arg2);
}
