typedef unsigned char u8; typedef signed int s32;
extern s32 D_800DE598;

void func_80028720(u8 *arg0, u8 *arg1) {
    s32 i;
    s32 j;

    i = 0;
    j = 0;
    while (arg0[i] != ' ') {
        i++;
    }
    i++;
    while (arg0[i] != '\r' && arg0[i] != '~' && arg0[i] != '>') {
        arg1[j++] = arg0[i++];
    }
    arg1[j++] = ',';
    arg1[j++] = ' ';
    i = 0;
    while (arg0[i] != ' ') {
        arg1[j++] = arg0[i++];
    }
    arg1[j] = 0;
    D_800DE598++;
}
