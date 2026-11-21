#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_1C_s32 { u8 pad[0x1C]; s32 v; };
struct gd_20_s32 { u8 pad[0x20]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
extern s32 D_8005088C;
extern s32 D_800D7908;
extern s32 D_800D7D20;
extern s32 D_800E1004;
extern s32 D_800E6B08;
s32 func_8000785C();
s32 func_800112AC();
s32 func_80011684();
s32 func_800359E8();
s32 func_80035E48();
s32 func_800927E8();

struct n64dk_r12 func_800113B8(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;
    s8 pad0;

    sp18.w[1] = 1;
    sp18.w[0] = 0;
    for (;;) {
        sp10 = func_80035E48(arg1);
        if (sp10 == 0) {
            break;
        }
        switch (sp10) {
        case 8:
            if (((struct gd_20_s32 *)((struct gd_6C_s32 *)arg1)->v)->v > 0) {
                D_800E1004 = ((struct gd_20_s32 *)((struct gd_6C_s32 *)arg1)->v)->v;
            }
            D_800D7908 = 4;
            break;
        case 17:
            sp18.w[1] = 0;
            sp18.w[0] = 1;
            return sp18;
        }
    }
    func_800112AC(arg1);
    if (D_800D7D20 != 0) {
        func_8000785C(1);
        D_800D7908 = 0;
        sp18.w[1] = 0;
        D_8005088C = 0;
        sp18.w[0] = 1;
        if (D_800D7D20 == 2) {
            func_800927E8(0);
            func_80011684(D_800E6B08, ((struct gd_1C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v, ((struct gd_10_s16 *)(*(s32 *)((struct gd_6C_s32 *)arg1)->v))->v, ((struct gd_12_s16 *)(*(s32 *)((struct gd_6C_s32 *)arg1)->v))->v);
        } else {
            if (((struct gd_1C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v != 0) {
                func_800359E8(((struct gd_1C_s32 *)((struct gd_6C_s32 *)arg1)->v)->v);
            }
        }
    }
    return sp18;
}
