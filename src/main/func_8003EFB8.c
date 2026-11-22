typedef float f32;
void guMtxIdentF(float mf[4][4]);
void func_8003EFB8(f32 mf[4][4], f32 x, f32 y, f32 z)
{
    guMtxIdentF(mf);
    mf[0][0] = x;
    mf[1][1] = y;
    mf[2][2] = z;
    mf[3][3] = 1.0f;
}
