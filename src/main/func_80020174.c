typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { u32 w0; u32 w1; } Gfx;

extern s32 D_010942B8;
extern s32 D_80058120[];
extern s32 D_8005812C[];
extern s32 D_80058850;
extern s32 D_80058858;
extern s32 D_80058D58;
extern s32 D_8005998C;
extern s32 D_800599E8;
extern s32 D_800DDFA8;
extern Gfx *D_800E0F4C;
extern s32 D_800E5C88[];
extern char D_800DE5D8[];
extern char D_80001148[];
extern char D_80001150[];
extern char D_8000115C[];
extern char D_8000116C[];
extern char D_8000117C[];
extern char D_8000119C[];
extern char D_800011B8[];
s32 func_8001FBF8();
s32 sprintf();

void func_80020174(void) {
    s32 pad;
    Gfx *g;

    g = D_800E0F4C++;
    g->w0 = 0x06000000;
    g->w1 = (u32)&D_010942B8;
    sprintf(D_800DE5D8, D_80001148, D_8005812C[D_8005998C]);
    func_8001FBF8(31, 207, 94, 90, D_800DE5D8);
    sprintf(D_800DE5D8, D_80001150, D_800DDFA8);
    func_8001FBF8(129, 207, 62, 90, D_800DE5D8);
    if (D_80058120[D_8005998C] >= 0) {
        sprintf(D_800DE5D8, D_8000115C, D_80058120[D_8005998C]);
    } else {
        sprintf(D_800DE5D8, D_8000116C, abs(D_80058120[D_8005998C]));
    }
    func_8001FBF8(195, 207, 92, 90, D_800DE5D8);
    func_8001FBF8(31, 16, 100, 90, D_800E5C88[D_80058858 * 6 + D_800599E8] + 5);
    if (D_80058858 == 2) {
        sprintf(D_800DE5D8, D_8000117C, D_80058D58);
        func_8001FBF8(31, 80, 100, 90, D_800DE5D8);
    } else if (D_80058D58 != 0) {
        sprintf(D_800DE5D8, D_8000119C, D_80058D58);
        func_8001FBF8(31, 80, 100, 90, D_800DE5D8);
    } else {
        sprintf(D_800DE5D8, D_800011B8, (D_80058850 + 1) * 100 * (D_80058858 + 1));
        func_8001FBF8(31, 90, 100, 90, D_800DE5D8);
    }
}
