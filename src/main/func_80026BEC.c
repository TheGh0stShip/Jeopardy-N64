typedef signed char s8; typedef unsigned char u8; typedef signed int s32;

extern u8 D_800DE548[];
extern u8 D_800DEFE0[];
s32 func_80026B64(u8 *arg0, s32 arg1);

s32 func_80026BEC(u8 *arg0, s32 arg1) {
    s32 pad0;
    s32 ret;
    s32 pad1;
    s32 len;
    s32 i;
    s32 j;
    s32 k;

    ret = 0;
    for (i = 0; i < 80; i++) {
        D_800DE548[i] = 0;
        D_800DEFE0[i] = 0;
    }
    i = 0;
    D_800DEFE0[0] = 0;
    while (arg0[i] != 0) {
        D_800DE548[i] = arg0[i++];
    }
    len = i;
    while (func_80026B64(D_800DE548, arg1) != 0) {
        for (j = i; D_800DE548[j] != ' '; j--) {
        }
        D_800DE548[j++] = 0;
        for (k = 0; k + j < len; k++) {
            D_800DEFE0[k] = arg0[k + j];
        }
    }
    return ret;
}
