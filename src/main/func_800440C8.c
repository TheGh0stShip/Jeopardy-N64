typedef float f32;
typedef struct { long m[4][4]; } Mtx;
#define FTOFIX32(x) (long)((x) * (float)0x00010000)

void func_800440C8(float mf[4][4], Mtx *m)
{
    int i, j;
    int e1, e2;
    int *ai, *af;

    ai = (int *)&m->m[0][0];
    af = (int *)&m->m[2][0];

    for (i = 0; i < 4; i++)
        for (j = 0; j < 2; j++) {
            e1 = FTOFIX32(mf[i][j*2]);
            e2 = FTOFIX32(mf[i][j*2+1]);
            *(ai++) = (e1 & 0xffff0000) | ((e2 >> 16) & 0xffff);
            *(af++) = ((e1 << 16) & 0xffff0000) | (e2 & 0xffff);
        }
}
