typedef unsigned char u8;
typedef unsigned int u32;

extern u32 func_80039EC0(u32 addr);
extern u8 func_80039F44(u32 addr);

void func_80039F84(u32 addr, u8 *dst, u32 n)
{
    u32 v;

    while (n != 0 && (addr & 3) != 0) {
        *dst++ = func_80039F44(addr++);
        n--;
    }
    while (n >= 4) {
        v = func_80039EC0(addr);
        *dst++ = v >> 24;
        *dst++ = v >> 16;
        *dst++ = v >> 8;
        *dst++ = v;
        addr += 4;
        n -= 4;
    }
    while (n != 0) {
        *dst++ = func_80039F44(addr++);
        n--;
    }
}
