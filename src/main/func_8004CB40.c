typedef float f32;
typedef long s32;
typedef union {
    struct { long m[4][4]; } m;
    long long force_structure_alignment;
} Mtx;

void func_8004C888(float mf[4][4], float xEye, float yEye, float zEye,
               float xAt, float yAt, float zAt,
               float xUp, float yUp, float zUp);
void func_800440C8(float mf[4][4], Mtx *m);

void func_8004CB40(Mtx *m, float xEye, float yEye, float zEye,
              float xAt, float yAt, float zAt,
              float xUp, float yUp, float zUp)
{
    float mf[4][4];

    func_8004C888(mf, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);
    func_800440C8(mf, m);
}
