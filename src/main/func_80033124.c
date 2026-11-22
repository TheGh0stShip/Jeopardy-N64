typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct n64dk_r12 { s32 w[3]; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80058858;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_800599F0[][7];
extern s32 D_80059A44[][7];
extern s32 D_80059B10[][6];
extern s32 D_80059BA0;
extern struct gd_48_s32 *D_800E36A8[];
extern s32 D_800E6E84;

struct n64dk_r12 func_80033124(s32 arg1) {
    struct n64dk_r12 sp0;

    sp0.w[1] = 1;
    sp0.w[0] = 5;
    if (D_80059BA0 != 0) {
        if (D_800E6E84 == 1) {
            D_800E36A8[D_800599EC * 6 + D_800599E8]->v = D_800599F0[D_80058858][D_80059B10[D_800599EC][D_800599E8]];
            D_800E6E84 = 0;
        } else {
            D_800E6E84 = 1;
            D_800E36A8[D_800599EC * 6 + D_800599E8]->v = D_80059A44[D_80058858][D_80059B10[D_800599EC][D_800599E8]];
        }
    }
    return sp0;
}
