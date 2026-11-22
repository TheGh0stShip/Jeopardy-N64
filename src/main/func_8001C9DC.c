typedef signed int s32; typedef unsigned int u32;

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 pad14[3];
} Struct800568B4;

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
} Struct80056E54;

extern Struct800568B4 D_800568B4[];
extern Struct80056E54 D_80056E54[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
extern s32 D_80059610;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001C9DC(void) {
    u32 i;

    func_8001B230();
    for (i = 0; i < 12; i++) {
        func_80020700(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk14);
    }
    for (i = 0; i < 3; i++) {
        func_80020700(D_800568B4[i].unk0, D_800568B4[i].unk4, D_800568B4[i].unk8, D_800568B4[i].unkC, D_800568B4[i].unk10);
    }
    if (D_800580C4 != 0) {
        for (i = 9; i < 12; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk1C);
            } else if (D_800580D4 != 0) {
                func_80020700(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk18);
            }
        }
    } else for (i = D_80059610 * 3; i < D_80059610 * 3 + 3; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk1C);
            } else if (D_800580D4 != 0) {
                func_80020700(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk18);
            }
        }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 12; i++) {
        func_80020C40(D_80056E54[i].unk0, D_80056E54[i].unk4, D_80056E54[i].unk8, D_80056E54[i].unkC, D_80056E54[i].unk10);
    }
}
