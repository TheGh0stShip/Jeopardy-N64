typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;

struct n64dk_a80057154 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80057154 D_80057154[];
struct n64dk_a80057354 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; s32 m1C; };
extern struct n64dk_a80057354 D_80057354[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
extern s32 D_80059608;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001E844(void) {
    u32 i;

    func_8001B230();
    for (i = 0; i < 4; i++) {
        func_80020700(D_80057154[i].m0, D_80057154[i].m4, D_80057154[i].m8, D_80057154[i].mC, D_80057154[i].m10);
    }
    for (i = 0; i < 9; i++) {
        func_80020700(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m14);
    }
    if (D_800580C4 != 0) {
        for (i = 6; i < 9; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m1C);
            } else if (D_800580D4 != 0) {
                func_80020700(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m18);
            }
        }
    } else for (i = D_80059608 * 3; i < D_80059608 * 3 + 3; i++) {
        if (D_800580C8 != 0) {
            func_80020700(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m1C);
        } else if (D_800580D4 != 0) {
            func_80020700(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m18);
        }
    }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 9; i++) {
        func_80020C40(D_80057354[i].m0, D_80057354[i].m4, D_80057354[i].m8, D_80057354[i].mC, D_80057354[i].m10);
    }
}
