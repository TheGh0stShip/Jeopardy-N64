typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;

typedef struct {
    u8 unk_00[50];
} Unk50;

extern u32 D_8005884C;
extern Unk50 D_800D7710[];
extern u32 D_800E0E10[];
s32 func_80012B08(s32, f32, f32);
s32 func_8001F56C();

void func_8001FD54(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4) {
    u32 i;

    D_8005884C = func_8001F56C(arg4);
    for (i = 0; i < D_8005884C; i++) {
        func_80012B08((s32)&D_800D7710[i], ((arg2 - D_800E0E10[i]) >> 1) + arg0, arg1 + 4 + i * 13);
    }
}
