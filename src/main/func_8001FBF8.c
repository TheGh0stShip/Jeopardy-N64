typedef signed int s32; typedef unsigned int u32; typedef float f32;

typedef struct { char pad[50]; } Unk50;

extern Unk50 D_800D7710[];
extern u32 D_800E0E10[];
extern u32 D_8005884C;
s32 func_80012B08(Unk50 *, f32, f32);
u32 func_8001F56C(u32);

void func_8001FBF8(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 i;

    D_8005884C = func_8001F56C(a4);
    for (i = 0; i < D_8005884C; i++) {
        func_80012B08(&D_800D7710[i], ((a2 - D_800E0E10[i]) >> 1) + a0, a1 + 4 + i * 10);
    }
}
