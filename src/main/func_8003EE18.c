
extern float __sinf(float);
extern float __cosf(float);
extern void guMtxIdentF(float mf[4][4]);

void func_8003EE18(float mf[4][4], float r, float p, float h)
{
    float sinr, sinp, sinh, cosr, cosp, cosh;
    float xx;
    static float dtor;

    dtor = 3.1415926 / 180.0;
    r *= dtor;
    p *= dtor;
    h *= dtor;

    sinr = __sinf(r);
    cosr = __cosf(r);
    sinp = __sinf(p);
    cosp = __cosf(p);
    sinh = __sinf(h);
    cosh = __cosf(h);

    guMtxIdentF(mf);

    mf[0][0] = cosp * cosh;
    mf[0][1] = cosp * sinh;
    mf[0][2] = -sinp;

    xx = sinr * sinp;
    mf[1][0] = xx * cosh - cosr * sinh;
    mf[1][1] = xx * sinh + cosr * cosh;
    mf[1][2] = sinr * cosp;

    xx = cosr * sinp;
    mf[2][0] = xx * cosh + sinr * sinh;
    mf[2][1] = xx * sinh - sinr * cosh;
    mf[2][2] = cosr * cosp;
}
