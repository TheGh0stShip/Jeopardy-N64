typedef unsigned char u8;
typedef int s32;
typedef unsigned int u32;

extern u8 *D_800DE628;
extern u8 *D_800E9078;
extern u32 D_800E5C58[];
u32 osVirtualToPhysical(void *);

void func_800036D4(void) {
    s32 n;
    s32 k;
    s32 j;
    s32 i;

    n = 0;
    i = 0;
    for (i = 2; i >= 0; i--) {
        for (j = 31; ; j--) {
            if (j < 0) break;
            for (k = 0; k < 128; k++) {
                D_800E9078[n++] = D_800DE628[j * 256 + k + i * 0x2000];
            }
        }
        for (j = 31; ; j--) {
            if (j < 0) break;
            for (k = 0; k < 128; k++) {
                D_800E9078[n++] = D_800DE628[j * 256 + k + i * 0x2000 + 128];
            }
        }
    }
    for (n = 0; n < 6; n++) {
        D_800E5C58[n] = osVirtualToPhysical(D_800E9078 + n * 0x1000);
    }
}
