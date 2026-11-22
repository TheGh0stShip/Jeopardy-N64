typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct { u32 w0; u32 w1; } Gfx;
struct Rect { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; u8 pad18[0x8]; };
extern struct Rect D_800566B4[];
extern s32 D_010942B8;
extern s32 D_0108C7F8;
extern s32 D_0108D6F8;
extern s32 D_80058074;
extern s32 D_8005809C;
extern s32 D_80058120[];
extern s32 D_80058124;
extern s32 D_80058128;
extern s32 D_8005812C;
extern s32 D_80058130;
extern s32 D_80058134;
extern s32 D_800581F0[];
extern s32 D_80058220[];
extern s32 D_80058700[][8];
extern s32 D_80058740[][8];
extern s32 D_80058780[][8];
extern s32 D_800587C0[][8];
extern s32 D_80058844;
extern s32 D_80058848;
extern s32 D_80058858;
extern s32 D_8005998C;
extern s32 D_800599E8;
extern s32 D_800D7710;
extern s32 D_800DE5D8;
extern s32 D_800DF030;
extern Gfx *D_800E0F4C;
extern s32 D_800E3B24;
extern s32 D_800E3B28;
extern s32 D_800E5C88[];
extern s32 D_8000115C;
extern s32 D_8000116C;
extern s32 D_80001494;
extern s32 D_800014B4;
extern s32 D_800014D0;
extern s32 D_800014DC;
extern s32 D_800014E8;
extern s32 D_800014FC;
extern s32 D_80001510;
extern s32 D_80001520;
s32 func_80011AD8();
s32 func_80012B08();
s32 func_8001AB70();
s32 func_8001F7C8();
s32 func_8001FBF8();
s32 func_8001FD54();
s32 func_80020700();
s32 func_8002142C();
s32 sprintf();

void func_80025A00(void) {
    u32 i;
    u32 x;
    u32 y;
    u32 n;
    s32 w;
    s32 h;
    Gfx *g;

    n = 0;
    func_8001AB70(27, 16, 244, 182, 0, 0, 0, 180);
    func_8001AB70(31, 22, 236, 28, 8, 8, 128, 255);
    if (D_8005998C == 0) {
        func_8001AB70(31, 54, 75, 32, 64, 64, 160, 255);
    } else {
        func_8001AB70(31, 54, 75, 32, 8, 8, 128, 255);
    }
    if (D_8005998C == 1) {
        func_8001AB70(111, 54, 76, 32, 64, 64, 160, 255);
    } else {
        func_8001AB70(111, 54, 76, 32, 8, 8, 128, 255);
    }
    if (D_8005998C == 2) {
        func_8001AB70(192, 54, 75, 32, 64, 64, 160, 255);
    } else {
        func_8001AB70(192, 54, 75, 32, 8, 8, 128, 255);
    }
    func_8001AB70(192, 90, 75, 32, 8, 8, 128, 255);
    func_8001AB70(192, 126, 75, 32, 8, 8, 128, 255);
    func_8001AB70(192, 162, 75, 32, 8, 8, 128, 255);
    g = D_800E0F4C++;
    g->w0 = 0xE7000000;
    g->w1 = 0;
    g = D_800E0F4C++;
    g->w0 = 0x06000000;
    g->w1 = (u32)&D_010942B8;
    g = D_800E0F4C++;
    g->w0 = 0xBA001402;
    g->w1 = 0x200000;
    if (D_8005998C == 0) {
        func_8002142C(31, 54, 75, 32, &D_8005809C);
    } else {
        func_8002142C(31, 54, 75, 32, &D_80058074);
    }
    if (D_8005998C == 1) {
        func_8002142C(111, 54, 76, 32, &D_8005809C);
    } else {
        func_8002142C(111, 54, 76, 32, &D_80058074);
    }
    if (D_8005998C == 2) {
        func_8002142C(192, 54, 75, 32, &D_8005809C);
    } else {
        func_8002142C(192, 54, 75, 32, &D_80058074);
    }
    func_8002142C(31, 20, 236, 30, &D_80058074);
    func_8002142C(192, 90, 75, 32, &D_80058074);
    func_8002142C(192, 126, 75, 32, &D_80058074);
    func_8002142C(192, 162, 75, 32, &D_80058074);
    if ((u32)D_80058858 < 2) {
        for (i = 0; i < 6; i++) {
            func_80020700(D_800566B4[i].m0 + 36, D_800566B4[i].m4 + 50, D_800566B4[i].m8, D_800566B4[i].mC, D_800566B4[i].m10);
        }
    } else for (i = 0; i < 6; i++) {
        func_80020700(D_800566B4[i].m0 + 36, D_800566B4[i].m4 + 50, D_800566B4[i].m8, D_800566B4[i].mC, D_800566B4[i].m14);
    }
    y = 0;
    n = 0;
    x = 0;
    while (n < 10) {
        func_80020700(x * 20 + 31, y * 12 + 172, 16, 10, D_800581F0[n]);
        if (++x >= 8) {
            x = 0;
            y++;
        }
        n++;
    }
    func_80020700(71, 184, 56, 10, &D_0108D6F8);
    func_80020700(131, 184, 56, 10, &D_0108C7F8);
    x = D_80058700[D_80058848][D_80058844];
    y = D_80058740[D_80058848][D_80058844];
    w = D_80058780[D_80058848][D_80058844];
    h = D_800587C0[D_80058848][D_80058844];
    func_80020700(x + 31, y + 172, w, h, D_80058220[D_80058848 * 8 + D_80058844]);
    g = D_800E0F4C++;
    g->w0 = 0xBA001402;
    g->w1 = 0;
    g = D_800E0F4C++;
    g->w0 = 0xB900031D;
    g->w1 = 0x552078;
    g = D_800E0F4C++;
    g->w0 = 0xFA000000;
    g->w1 = 0xFFFF00FF;
    func_80011AD8(1);
    g = D_800E0F4C++;
    g->w0 = 0x06000000;
    g->w1 = (u32)&D_010942B8;
    g = D_800E0F4C++;
    g->w0 = 0xE7000000;
    g->w1 = 0;
    func_8001F7C8(D_800E5C88[D_80058858 * 6 + D_800599E8]);
    if (D_80058858 == 2) {
        sprintf(&D_800DE5D8, &D_80001494, &D_800D7710);
    } else {
        sprintf(&D_800DE5D8, &D_800014B4, &D_800D7710);
    }
    func_8001FD54(31, 20, 236, 32, &D_800DE5D8);
    if (D_80058120[D_8005998C] >= 0) {
        sprintf(&D_800DE5D8, &D_8000115C, D_80058120[D_8005998C]);
    } else {
        sprintf(&D_800DE5D8, &D_8000116C, abs(D_80058120[D_8005998C]));
    }
    if (D_80058120[0] >= 0) {
        sprintf(&D_800DE5D8, &D_800014D0, D_8005812C, abs(D_80058120[0]));
    } else {
        sprintf(&D_800DE5D8, &D_800014DC, D_8005812C, abs(D_80058120[0]));
    }
    func_8001FBF8(31, 54, 75, 32, &D_800DE5D8);
    if (D_80058124 >= 0) {
        sprintf(&D_800DE5D8, &D_800014D0, D_80058130, abs(D_80058124));
    } else {
        sprintf(&D_800DE5D8, &D_800014DC, D_80058130, abs(D_80058124));
    }
    func_8001FBF8(111, 54, 76, 32, &D_800DE5D8);
    if (D_80058128 >= 0) {
        sprintf(&D_800DE5D8, &D_800014D0, D_80058134, abs(D_80058128));
    } else {
        sprintf(&D_800DE5D8, &D_800014DC, D_80058134, abs(D_80058128));
    }
    func_8001FBF8(192, 54, 75, 32, &D_800DE5D8);
    sprintf(&D_800DE5D8, &D_800014E8, D_800E3B24);
    func_8001FBF8(192, 90, 75, 32, &D_800DE5D8);
    sprintf(&D_800DE5D8, &D_800014FC, D_800E3B28);
    func_8001FBF8(192, 126, 75, 32, &D_800DE5D8);
    sprintf(&D_800DE5D8, &D_80001510, D_80058120[D_8005998C]);
    func_8001FBF8(192, 162, 75, 32, &D_800DE5D8);
    sprintf(&D_800DE5D8, &D_80001520, &D_800DF030);
    func_80012B08(&D_800DE5D8, 0x43450000, 0x43320000);
}
