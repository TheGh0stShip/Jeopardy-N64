typedef signed int s32; typedef unsigned char u8;
char D_80007904[4] __attribute__((section(".text"))) = ",\r\n\t";
u8 *func_80007904(u8 *dst, u8 *src, s32 n) {
    s32 i;
    s32 j;

    i = 0;
    j = 0;
    for (; i < n; i++) {
        dst[i] = src[j];
        if (src[j] != 0) {
            j++;
        }
    }
    return dst;
}
