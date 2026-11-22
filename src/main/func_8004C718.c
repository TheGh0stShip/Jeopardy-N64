typedef union { struct { unsigned int hi, lo; } word; double d; } du;
typedef union { unsigned int i; float f; } fu;

extern du D_800025A8[];
extern du D_800025D0;
extern du D_800025D8;
extern du D_800025E0;
extern fu D_800025E8;
extern fu D_80002598;

#define ROUND(d) (int)(((d) >= 0.0) ? ((d) + 0.5) : ((d) - 0.5))
#define ABS(d) ((d) > 0) ? (d) : -(d)

float func_8004C718(float x)
{
    double dx, xsq, poly;
    double dn;
    int n;
    double result;
    int ix, xpt;

    ix = *(int *)&x;
    xpt = (ix >> 22);
    xpt &= 0x1ff;

    if (xpt < 0x136) {
        dx = (float)((x > 0.0f) ? x : -x);
        dn = dx * D_800025D0.d + 0.5;
        n = ROUND(dn);
        dn = n;
        dn -= 0.5;
        dx = dx - dn * D_800025D8.d;
        dx = dx - dn * D_800025E0.d;
        xsq = dx * dx;
        poly = ((D_800025A8[4].d * xsq + D_800025A8[3].d) * xsq + D_800025A8[2].d) * xsq + D_800025A8[1].d;
        result = dx + (dx * xsq) * poly;
        if ((n & 1) == 0)
            return (float)result;
        return -(float)result;
    }
    if (x != x)
        return D_80002598.f;
    return D_800025E8.f;
}
