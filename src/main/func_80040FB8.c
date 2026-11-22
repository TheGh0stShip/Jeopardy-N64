typedef unsigned short u16;
typedef float f32;
typedef double f64;

void guMtxIdentF(float mf[4][4]);
float __cosf(float);
float __sinf(float);
extern f64 D_80001E18;

void func_80040FB8(float mf[4][4], u16 *perspNorm, float fovy, float aspect, float near, float far, float scale) {
    float cot;
    int i, j;

    guMtxIdentF(mf);

    fovy *= D_80001E18;
    cot = __cosf(fovy / 2) / __sinf(fovy / 2);

    mf[0][0] = cot / aspect;
    mf[1][1] = cot;
    mf[2][2] = (near + far) / (near - far);
    mf[2][3] = -1;
    mf[3][2] = (2 * near * far) / (near - far);
    mf[3][3] = 0;

    for (i = 0; i < 4; i++)
        for (j = 0; j < 4; j++)
            mf[i][j] *= scale;

    if (perspNorm != (u16 *) 0) {
        if (near + far <= 2.0) {
            *perspNorm = (u16) 0xFFFF;
        } else {
            *perspNorm = (u16) ((2.0 * 65536.0) / (near + far));
            if (*perspNorm <= 0)
                *perspNorm = (u16) 0x0001;
        }
    }
}
