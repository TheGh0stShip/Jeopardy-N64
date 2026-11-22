typedef unsigned char u8;
typedef signed int s32;

void func_8003E158(void *src, void *dst, s32 n) {
    u8 *s = src;
    u8 *d = dst;
    s32 i;

    for (i = 0; i < n; i++) {
        *d++ = *s++;
    }
}
