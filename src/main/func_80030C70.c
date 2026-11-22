typedef signed char s8; typedef unsigned char u8; typedef signed int s32;
extern s32 D_80058120[];
extern u8 * D_80058D80;
extern s32 D_800599D8;
extern s32 D_800D7680[];
extern u8 D_800DE160[][54];
extern u8 D_800DF030[];
extern s32 D_800E0F40[];
extern s32 D_800E3698[];
s32 func_8002DB04();

void func_80030C70(s32 arg0) {
    s32 i;

    i = 0;
    D_80058D80 = D_800DE160[arg0];
    while (D_800DE160[arg0][i] != 0) {
        D_800DF030[i] = D_800DE160[arg0][i++];
    }
    D_800DF030[i] = 0;
    if (func_8002DB04() != 0) {
        D_800599D8++;
        D_800E0F40[arg0] = 1;
        D_800D7680[arg0] = D_80058120[arg0] + D_800E3698[arg0];
        return;
    }
    D_800E0F40[arg0] = 0;
    D_800D7680[arg0] = D_80058120[arg0] - D_800E3698[arg0];
}
