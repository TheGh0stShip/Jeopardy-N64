typedef union {
	struct { unsigned int hi; unsigned int lo; } word;
	double d;
} du;

typedef union {
	unsigned int i;
	float f;
} fu;

extern du D_80001D58[];   /* P */
extern du D_80001D80;     /* rpi */
extern du D_80001D88;     /* pihi */
extern du D_80001D90;     /* pilo */
extern fu D_80001D98;     /* zero */
extern float D_80002598;  /* __libm_qnan_f */

#define ROUND(d) (int)(((d) >= 0.0) ? ((d) + 0.5) : ((d) - 0.5))

float func_8003F058(float x)
{
	double dx, xsq, poly;
	double dn;
	int n;
	double result;
	int ix, xpt;

	ix = *(int *)&x;
	xpt = (ix >> 22);
	xpt &= 0x1ff;

	if (xpt < 255) {
		dx = x;
		if (xpt >= 230) {
			xsq = dx * dx;
			poly = ((D_80001D58[4].d * xsq + D_80001D58[3].d) * xsq + D_80001D58[2].d) * xsq + D_80001D58[1].d;
			result = dx + (dx * xsq) * poly;
			return (float)result;
		}
		return x;
	}

	if (xpt < 310) {
		dx = x;
		dn = dx * D_80001D80.d;
		n = ROUND(dn);
		dn = n;
		dx = dx - dn * D_80001D88.d;
		dx = dx - dn * D_80001D90.d;
		xsq = dx * dx;
		poly = ((D_80001D58[4].d * xsq + D_80001D58[3].d) * xsq + D_80001D58[2].d) * xsq + D_80001D58[1].d;
		result = dx + (dx * xsq) * poly;
		if ((n & 1) == 0)
			return (float)result;
		return -(float)result;
	}

	if (x != x) {
		return D_80002598;
	}
	return D_80001D98.f;
}
