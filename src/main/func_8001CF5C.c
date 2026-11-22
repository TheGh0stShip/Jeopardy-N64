typedef signed char s8; typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;
struct n64dk_a80056914 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; u8 pad14[0xC]; };
extern struct n64dk_a80056914 D_80056914[];
struct n64dk_a80056FD4 { s32 m0; s32 m4; s32 m8; s32 mC; s32 m10; s32 m14; s32 m18; s32 m1C; };
extern struct n64dk_a80056FD4 D_80056FD4[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
extern s32 D_80059614;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001CF5C(void) {
    u32 i;

    func_8001B230();
    for (i = 0; i < 12; i++) {
        func_80020700(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m14);
    }
    for (i = 0; i < 3; i++) {
        func_80020700(D_80056914[i].m0, D_80056914[i].m4, D_80056914[i].m8, D_80056914[i].mC, D_80056914[i].m10);
    }
    if (D_800580C4 != 0) {
        for (i = 9; i < 12; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m1C);
            } else if (D_800580D4 != 0) {
                func_80020700(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m18);
            }
        }
    } else for (i = D_80059614 * 3; i < D_80059614 * 3 + 3; i++) {
        if (D_800580C8 != 0) {
            func_80020700(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m1C);
        } else if (D_800580D4 != 0) {
            func_80020700(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m18);
        }
    }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 12; i++) {
        func_80020C40(D_80056FD4[i].m0, D_80056FD4[i].m4, D_80056FD4[i].m8, D_80056FD4[i].mC, D_80056FD4[i].m10);
    }
}
