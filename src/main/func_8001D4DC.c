typedef signed int s32; typedef unsigned int u32;

typedef struct {
    s32 a, b, c, d, e, f, g, h;
} Unk571D4;
typedef struct {
    s32 a, b, c, d, e;
    s32 pad[3];
} Unk567F4;

extern Unk567F4 D_800567F4[];
extern Unk571D4 D_800571D4[];
extern s32 D_0107B478;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580D4;
extern s32 D_80058F00;
s32 func_8001B230();
s32 func_80020700();
s32 func_80020AA0();
s32 func_80020C40();

void func_8001D4DC(void) {
    u32 i;

    func_8001B230();
    for (i = 0; i < 12; i++) {
        func_80020700(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].f);
    }
    for (i = 0; i < 3; i++) {
        func_80020700(D_800567F4[i].a, D_800567F4[i].b, D_800567F4[i].c, D_800567F4[i].d, D_800567F4[i].e);
    }
    if (D_800580C4 != 0) {
        for (i = 9; i < 12; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].h);
            } else if (D_800580D4 != 0) {
                func_80020700(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].g);
            }
        }
    } else for (i = D_80058F00 * 3; i < D_80058F00 * 3 + 3; i++) {
            if (D_800580C8 != 0) {
                func_80020700(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].h);
            } else if (D_800580D4 != 0) {
                func_80020700(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].g);
            }
    }
    func_80020AA0(&D_0107B478);
    for (i = 0; i < 12; i++) {
        func_80020C40(D_800571D4[i].a, D_800571D4[i].b, D_800571D4[i].c, D_800571D4[i].d, D_800571D4[i].e);
    }
}
