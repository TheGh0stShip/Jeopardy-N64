#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
extern s32 D_8004DFC0;
extern s32 D_8004DFC4;
extern s32 D_800E3A40;
extern s32 D_800E3AFC;
extern s32 D_800E3B00;
s32 func_8003D4A8();
s32 func_8003D4D8();
s32 func_800412B8();

void func_80007470(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;

    for (sp10 = 0;;) {
        if ((u32)sp10 >= (u32)D_8004DFC4) {
            break;
        }
        if (func_800412B8(((s32)&D_800E3A40), ((s32)&sp14), 0) == -1) {
        }
        sp10++;
    }
    sp18 = D_800E3AFC;
    for (;;) {
        if (sp18 == 0) {
            break;
        }
        sp1C = *(s32 *)sp18;
        if ((u32)(((struct gd_C_s32 *)sp18)->v + 1) < (u32)D_8004DFC0) {
            if (D_800E3AFC == sp18) {
                D_800E3AFC = *(s32 *)sp18;
            }
            func_8003D4A8(sp18);
            if (D_800E3B00 != 0) {
                func_8003D4D8(sp18, D_800E3B00);
            } else {
                D_800E3B00 = sp18;
                (*(s32 *)sp18) = 0;
                ((struct gd_4_s32 *)sp18)->v = 0;
            }
        }
        sp18 = sp1C;
    }
    D_8004DFC4 = 0;
    D_8004DFC0++;
}
