typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct { u32 w0; u32 w1; } Gfx;
typedef struct { s32 m[4][4]; } Mtx;

struct Obj8000BC74 {
    u8 unk_00[0x10];
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
    f32 unk_18;
    u8 unk_1C[0xC];
    f32 unk_28;
    f32 unk_2C;
    f32 unk_30;
};

struct Cam8000BC74 {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
};

void guPerspective(Mtx *m, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void guLookAt(Mtx *m, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
void guTranslateF(f32 mf[4][4], f32 x, f32 y, f32 z);
void guScaleF(f32 mf[4][4], f32 x, f32 y, f32 z);
void guRotateRPYF(f32 mf[4][4], f32 r, f32 p, f32 h);
void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 r[4][4]);
s32 func_800359E8();

extern s32 D_800D768C;
extern s32 D_800506F8;
extern f32 D_8004E208;
extern f32 D_8004E20C;
extern f32 D_8004E210;
extern f32 D_8004E214;
extern f32 D_8004E218;
extern f32 D_8004E21C;
extern f32 D_8004E220;
extern f32 D_8004E224;
extern f32 D_8004E228;
extern f32 D_800DFE18;
extern f32 D_800DFE1C;
extern f32 D_800DFE20;
extern Gfx *D_800E0F4C;
extern struct Cam8000BC74 *D_800E3B30;

void func_8000BC74(struct Obj8000BC74 *arg0, Mtx *arg1) {
    s32 t;
    u16 perspNorm;
    f32 m1[4][4];
    f32 m2[4][4];
    f32 m3[4][4];
    f32 m4[4][4];
    Gfx *g;

    guPerspective(arg1, &perspNorm, 33.0f, 4.0f / 3.0f, 200.0f, 5000.0f, arg0->unk_18);
    g = D_800E0F4C++;
    g->w0 = 0xBC00000E;
    g->w1 = perspNorm;
    if (0) {
        t = D_800D768C;
        if (D_800506F8 != 999 && D_800D768C > 450) {
            D_800506F8 = 999;
            func_800359E8(0x23);
        }
        if (t < 0) {
            t = 0;
        }
        if (t > 720) {
            t = 720;
        }
        guLookAt(arg1 + 1, D_8004E208, D_8004E20C, D_8004E210, D_8004E214, D_8004E218, D_8004E21C,
                 D_8004E220, D_8004E224, D_8004E228);
    } else if (D_800E3B30 != 0) {
        if (D_800DFE18 + D_800DFE1C + D_800DFE20 == 0.0f) {
            guLookAt(arg1 + 1, D_800E3B30->unk_00, D_800E3B30->unk_04, D_800E3B30->unk_08, D_800E3B30->unk_0C,
                     D_800E3B30->unk_10, D_800E3B30->unk_14, 0.0f, 1.0f, 0.0f);
        } else {
            guLookAt(arg1 + 1, D_800E3B30->unk_00, D_800E3B30->unk_04, D_800E3B30->unk_08, D_800E3B30->unk_0C,
                     D_800E3B30->unk_10, D_800E3B30->unk_14, D_800DFE18, D_800DFE1C, D_800DFE20);
        }
    } else {
        guTranslateF(m1, 0.0f, 0.0f, -1000.0f);
        guScaleF(m2, arg0->unk_18, arg0->unk_18, arg0->unk_18);
        guRotateRPYF(m3, arg0->unk_28, arg0->unk_2C, arg0->unk_30);
        guMtxCatF(m1, m2, m1);
        guMtxCatF(m1, m3, m1);
        guTranslateF(m4, 0.0f, 1.0f, 0.0f);
        guScaleF(m2, arg0->unk_18, arg0->unk_18, arg0->unk_18);
        guRotateRPYF(m3, arg0->unk_28, arg0->unk_2C, arg0->unk_30);
        guMtxCatF(m4, m2, m4);
        guMtxCatF(m4, m3, m4);
        guLookAt(arg1 + 1, arg0->unk_10, arg0->unk_12, arg0->unk_14, m1[3][0] + arg0->unk_10,
                 m1[3][1] + arg0->unk_12, m1[3][2] + arg0->unk_14, m4[3][0], m4[3][1], m4[3][2]);
    }
    g = D_800E0F4C++;
    g->w0 = 0x01030040;
    g->w1 = (u32)arg1;
    g = D_800E0F4C++;
    g->w0 = 0x01010040;
    g->w1 = (u32)(arg1 + 1);
}
