typedef float Matrix[4][4];
typedef struct { long m[4][4]; } Mtx;
void guMtxIdentF(float mf[4][4]);
void guMtxF2L(float mf[4][4], Mtx *m);

void func_8003F260(Mtx *m, float x, float y, float z)
{
    Matrix mf;
    float pad[4];

    guMtxIdentF(mf);
    mf[3][0] = x;
    mf[3][1] = y;
    mf[3][2] = z;
    guMtxF2L(mf, m);
}
