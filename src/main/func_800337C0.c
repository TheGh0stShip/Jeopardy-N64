typedef signed int s32;

extern s32 D_800DF080[];
extern s32 D_800DDFE8[];
extern s32 D_80059614;
extern s32 D_80059C24[];
extern s32 D_80059C30[];
s32 func_8001FB04(s32);
s32 func_80033728(s32);
s32 func_80033778(s32);

s32 func_800337C0(s32 arg0) {
    s32 i;
    s32 id;

    if (D_800DF080[arg0] != 0) {
        return 0;
    }
    id = func_8001FB04(arg0) - 2;
    for (i = 0; i < 13; i++) {
        if (D_800DDFE8[i] == func_80033728(id)) {
            return 0;
        }
    }
    if (func_80033778(id) < D_80059C24[D_80059614]) {
        return 0;
    }
    if (func_80033778(id) > D_80059C30[D_80059614]) {
        return 0;
    }
    return 1;
}
