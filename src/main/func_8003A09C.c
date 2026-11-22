typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;

u32 func_80039EC0();
s32 func_80039F44();
void func_8003A060(s32, u8);

void func_8003A09C(u32 src, s32 dst, u32 n) {
    u32 w;

    while (n != 0 && (src & 3) != 0) {
        func_8003A060(dst++, func_80039F44(src++));
        n--;
    }
    while (n >= 4) {
        w = func_80039EC0(src);
        func_8003A060(dst++, w >> 24);
        func_8003A060(dst++, w >> 16);
        func_8003A060(dst++, w >> 8);
        func_8003A060(dst++, w);
        src += 4;
        n -= 4;
    }
    while (n != 0) {
        func_8003A060(dst++, func_80039F44(src++));
        n--;
    }
}
