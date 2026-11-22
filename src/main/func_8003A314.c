typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
void func_8003A1B0(u32 addr, u8 val);
void func_80039E88(u32 addr, u32 val);

void func_8003A314(u32 dst, u8 c, u32 n) {
    u32 w;
    while (n != 0 && (dst & 3) != 0) {
        func_8003A1B0(dst++, c);
        n--;
    }
    if (n >= 4) {
        w = (c << 24) | (c << 16) | (c << 8) | c;
        do {
            func_80039E88(dst, w);
            n -= 4;
            dst += 4;
        } while (n >= 4);
    }
    while (n != 0) {
        func_8003A1B0(dst++, c);
        n--;
    }
}
