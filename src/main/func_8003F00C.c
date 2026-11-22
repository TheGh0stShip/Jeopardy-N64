typedef long Mtx_t[4][4];
typedef union {
    Mtx_t m;
    long long force_structure_alignment;
} Mtx;

extern void guScaleF(float mf[4][4], float x, float y, float z);
extern void guMtxF2L(float mf[4][4], Mtx *m);

void func_8003F00C(Mtx *m, float x, float y, float z)
{
    float mf[4][4];

    guScaleF(mf, x, y, z);
    guMtxF2L(mf, m);
}
