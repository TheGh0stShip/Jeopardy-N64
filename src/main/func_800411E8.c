typedef float f32;
typedef unsigned short u16;
typedef struct { long m[4][4]; } Mtx;

void func_80040FB8(float mf[4][4], u16 *perspNorm, float fovy, float aspect, float near, float far, float scale);
void func_800440C8(float mf[4][4], Mtx *m);

void func_800411E8(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near, float far, float scale)
{
    float mf[4][4];

    func_80040FB8(mf, perspNorm, fovy, aspect, near, far, scale);
    func_800440C8(mf, m);
}
