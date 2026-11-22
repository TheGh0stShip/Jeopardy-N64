typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;
extern s32 D_8004DE00[];
extern u8 *D_800DE628;
extern s32 D_800E69EC;

void func_8000348C(void) {
    s32 n;
    s32 k;
    s32 j;
    s32 i;
    u8 * p;

    for (i = 0; i < 6; i += 2) {
        p = (u8 *)(D_8004DE00[i] & 0xFFFFF);
        p += D_800E69EC;
        n = 0;
        for (j = 31; ; j--) {
            if (j < 0) break;
            for (k = 0; k < 128; k++) {
                D_800DE628[j * 256 + k + i * 0x1000] = p[n++];
            }
        }
        p = (u8 *)(D_8004DE00[i + 1] & 0xFFFFF);
        p += D_800E69EC;
        n = 0;
        for (j = 31; ; j--) {
            if (j < 0) break;
            for (k = 0; k < 128; k++) {
                D_800DE628[j * 256 + k + i * 0x1000 + 0x80] = p[n++];
            }
        }
    }
}
