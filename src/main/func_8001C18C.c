typedef signed int s32;
typedef unsigned int u32;
typedef unsigned char u8;

struct Rect7 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; u8 pad1C[0x4]; };
extern struct Rect7 D_80057594[];
extern struct Rect7 D_800578F4[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580D4;
extern s32 D_800580DC[];
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001C18C(void) {
    u32 i;
    u32 start;
    u32 end;
    u32 j;

    func_8001B230();
    for (i = 0; i < 18; i++) {
        func_80020700(D_80057594[i].m0, D_80057594[i].m4, D_80057594[i].m8, D_80057594[i].mC, D_80057594[i].m14);
    }
    for (i = 0; i < 3; i++) {
        func_80020700(D_800578F4[i].m0, D_800578F4[i].m4, D_800578F4[i].m8, D_800578F4[i].mC, D_800578F4[i].m14);
    }
    if (D_800580D4 != 0) {
        if (D_800580C4 < 3) {
            for (i = D_800580C4 * 3; i < D_800580C4 * 3 + 3; i++) {
                func_80020700(D_80057594[i].m0, D_80057594[i].m4, D_80057594[i].m8, D_80057594[i].mC, D_80057594[i].m18);
                func_80020700(D_80057594[i + 9].m0, D_80057594[i + 9].m4, D_80057594[i + 9].m8, D_80057594[i + 9].mC, D_80057594[i + 9].m18);
            }
        } else for (i = 0; i < 3; i++) {
            func_80020700(D_800578F4[i].m0, D_800578F4[i].m4, D_800578F4[i].m8, D_800578F4[i].mC, D_800578F4[i].m18);
        }
    }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 9; i++) {
        func_80020C40(D_80057594[i].m0, D_80057594[i].m4, D_80057594[i].m8, D_80057594[i].mC, D_80057594[i].m10);
    }
    for (i = 0; i < 3; i++) {
        func_80020C40(D_800578F4[i].m0, D_800578F4[i].m4, D_800578F4[i].m8, D_800578F4[i].mC, D_800578F4[i].m10);
    }
    for (j = 0; j < 3; j++) {
        start = D_800580DC[j] * 9 + 9 + j * 3;
        end = start + 3;
        for (i = start; i < end; i++) {
            func_80020C40(D_80057594[i].m0, D_80057594[i].m4, D_80057594[i].m8, D_80057594[i].mC, D_80057594[i].m10);
        }
    }
}
