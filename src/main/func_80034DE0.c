#include "n64dk_lift.h"

struct gd_3_u8 { u8 pad[0x3]; u8 v; };
struct n64dk_a80050720 { s8 m0; s8 m1; s8 m2; u8 pad3[0x1]; s8 m4; s8 m5; s8 m6; u8 pad7[0x1]; s8 m8; s8 m9; s8 mA; u8 padB[0x5]; };
extern struct n64dk_a80050720 D_80050720[];
extern s32 D_80059C44;
extern s32 D_80059C4C;
extern s32 D_80059C54;
extern s32 D_80059C5C;
extern s32 D_80059C64;

void func_80034DE0(void) {
    D_80050720[D_80059C64 + 1].m8 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C44)))->v;
    D_80050720[D_80059C64 + 1].m9 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C4C)))->v;
    D_80050720[D_80059C64 + 1].mA = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C54)))->v;
    D_80050720[D_80059C64 + 1].m0 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
    D_80050720[D_80059C64 + 1].m1 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
    D_80050720[D_80059C64 + 1].m2 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
    D_80050720[D_80059C64 + 1].m4 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
    D_80050720[D_80059C64 + 1].m5 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
    D_80050720[D_80059C64 + 1].m6 = ((struct gd_3_u8 *)((D_80059C64 * 4) + ((s32)&D_80059C5C)))->v;
}
