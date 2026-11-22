typedef unsigned char u8;
typedef signed int s32;
typedef unsigned int u32;

extern s32 D_80058D7C;
extern u8 *D_80058D80;
extern u32 D_80058D88;
extern u8 D_800DF030[];
extern u8 D_800DF031[];
extern u8 D_800DF032[];

void func_8002EBA0(void) {
    u32 i;

    i = 0;
    if (D_80058D80 == 0) {
        return;
    }
    if (D_80058D80 == (u8 *)&D_80058D7C) {
        return;
    }
    i = 0;
    while (D_80058D80[i] != 0) {
        i++;
    }
    if (i >= D_80058D88) {
        i = 0;
        while (i < D_80058D88) {
            D_800DF030[i] = D_80058D80[i];
            i++;
        }
        while (D_80058D80[i] != ' ' && D_80058D80[i] != 0) {
            D_800DF030[i] = D_80058D80[i++];
        }
        D_800DF030[i] = ' ';
        D_800DF031[i] = '_';
        D_800DF032[i] = 0;
        D_80058D88 = i + 1;
    }
}
