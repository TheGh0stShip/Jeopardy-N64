typedef unsigned char u8;
typedef signed int s32;

extern s32 D_800DE628;

void func_80002638(void) {
    s32 i;
    s32 j;

    for (i = 0; i < 96; i += 8) {
        for (j = i; j < i + 4; j++) {
            *(u8 *)(D_800DE628 + j * 2) = 255;
            *(u8 *)(D_800DE628 + j * 2 + 1) = 255;
            *(u8 *)(D_800DE628 + (j * 256 + j * 2)) = 255;
            *(u8 *)(D_800DE628 + (j * 256 + j * 2) + 1) = 255;
        }
        for (j = i + 4; j < i + 8; j++) {
            *(u8 *)(D_800DE628 + j * 2) = 1;
            *(u8 *)(D_800DE628 + j * 2 + 1) = 1;
            *(u8 *)(D_800DE628 + (j * 256 + j * 2)) = 1;
            *(u8 *)(D_800DE628 + (j * 256 + j * 2) + 1) = 1;
        }
    }
}
