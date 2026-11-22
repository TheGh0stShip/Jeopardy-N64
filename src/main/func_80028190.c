typedef signed char s8; typedef unsigned char u8; typedef signed int s32;

extern s32 D_80058850;
extern s32 D_80058854;
extern s32 D_800DE598;
extern u8 D_800E90D0[][31];
s32 func_80027DE0();

void func_80028190(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;

    sp14 = 0;
    sp18 = 0;
    D_800DE598 = 0;
    sp10 = func_80027DE0(D_80058854, D_80058850);
    while (!((*(u8 *)(sp10 + sp14)) == 13)) {
        sp18 = 0;
        while (((*(u8 *)(sp10 + sp14)) != 13) && (((*(u8 *)(sp10 + sp14)) != 126) && ((*(u8 *)(sp10 + sp14)) != 62))) {
            D_800E90D0[D_800DE598][sp18] = *(u8 *)((sp14++) + sp10);
            if (D_800E90D0[D_800DE598][sp18] == 124) {
                D_800E90D0[D_800DE598][sp18] = 32;
            }
            sp18++;
        }
        D_800E90D0[D_800DE598++][sp18] = 0;
        if (((*(u8 *)(sp10 + sp14)) != 13) && ((*(u8 *)(sp10 + sp14)) != 62)) {
            goto L114;
        }
        break;
        goto loop_continue;
L114: ;
        sp14++;
loop_continue: ;
    }
}
