typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;

struct D_80056BF4_s { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0x4]; s32 m18; u8 pad1C[0x4]; };
extern struct D_80056BF4_s D_80056BF4[];
struct D_80056DF4_s { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; u8 pad1C[0x4]; };
extern struct D_80056DF4_s D_80056DF4[];
extern s32 D_0107B478;
extern u64 D_80056DBC;
extern s32 D_80056DC4;
extern s32 D_800580C4;
extern s32 D_800580D4;
extern s32 D_80058D4C;
extern s32 D_80058DD8;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001F0B4(void) {
    u32 i;

    func_8001B230();
    for (i = 0; i < 3; i++) {
        func_80020700(D_80056DF4[i].m0, D_80056DF4[i].m4, D_80056DF4[i].m8, D_80056DF4[i].mC, D_80056DF4[i].m14);
    }
    for (i = 0; i < 14; i++) {
        func_80020700(D_80056BF4[i].m0, D_80056BF4[i].m4, D_80056BF4[i].m8, D_80056BF4[i].mC, D_80056BF4[i].m10);
    }
    func_80020700(D_80058D4C * 16 + 32, 45, D_80056DBC, D_80056DC4);
    func_80020700(D_80058DD8 * 16 + 32, 113, D_80056DBC, D_80056DC4);
    if (D_800580D4 != 0) {
        if (D_800580C4 < 2) {
            for (i = D_800580C4 * 3; i < D_800580C4 * 3 + 3; i++) {
                func_80020700(D_80056BF4[i].m0, D_80056BF4[i].m4, D_80056BF4[i].m8, D_80056BF4[i].mC, D_80056BF4[i].m18);
            }
        } else
            for (i = 0; i < 3; i++) {
                func_80020700(D_80056DF4[i].m0, D_80056DF4[i].m4, D_80056DF4[i].m8, D_80056DF4[i].mC, D_80056DF4[i].m18);
            }
    }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 3; i++) {
        func_80020C40(D_80056DF4[i].m0, D_80056DF4[i].m4, D_80056DF4[i].m8, D_80056DF4[i].mC, D_80056DF4[i].m10);
    }
}
