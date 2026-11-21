#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
extern s32 D_8004DFC0;
extern s32 D_800E3370;
extern s32 D_800E6B50;
extern s32 D_800E6D10;
extern s32 D_800E6D48;
extern s32 D_800E6D80;
s32 func_80006E44();
s32 func_800070FC();
s32 func_8003D4FC();
s32 func_800412B8();
s32 func_8004B918();

void func_80006CA0(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20[2];

    sp14 = 0;
    sp1C = 0;
    func_8004B918(((s32)&D_800E3370), ((s32)&sp20), ((s32)&D_800E6D10));
    for (;;) {
        if (sp14 != 0) {
            break;
        }
        func_800412B8(((s32)&D_800E6D10), ((s32)&sp18), 1);
        switch (*(s16 *)sp18) {
        case 1:
            sp10 = func_80006E44((*(s32 *)((((u32)D_8004DFC0 % 3) * 4) + ((s32)&D_800E6B50))), sp1C);
            if (sp10 != 0) {
                func_800412B8(((s32)&D_800E6D48), ((s32)&sp18), 1);
                func_800070FC(((struct gd_4_s32 *)sp18)->v);
                sp1C = ((struct gd_4_s32 *)sp18)->v;
            }
            break;
        case 4:
            break;
        case 10:
            sp14 = 1;
            break;
        default:
            break;
        }
    }
    func_8003D4FC(((s32)&D_800E6D80));
}
