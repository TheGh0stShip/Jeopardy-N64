typedef float f32;
typedef struct { long m[4][4]; } Mtx;
extern void guMtxIdentF(f32 mf[4][4]);
extern void guMtxF2L(f32 mf[4][4], Mtx *m);

void func_80044250(Mtx *m) {
    f32 mf[4][4];

    guMtxIdentF(mf);
    guMtxF2L(mf, m);
}
