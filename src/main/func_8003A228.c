typedef unsigned char u8;
typedef unsigned int u32;
void func_8003A1B0(u32 addr, u8 val);
void func_80039E88(u32 addr, u32 val);

void func_8003A228(u32 addr, u8 *src, u32 n)
{
    while (n != 0 && (addr & 3) != 0) {
        func_8003A1B0(addr++, *src++);
        n--;
    }
    while (n >= 4) {
        func_80039E88(addr, (src[0] << 24) | (src[1] << 16) | (src[2] << 8) | src[3]);
        addr += 4;
        src += 4;
        n -= 4;
    }
    while (n != 0) {
        func_8003A1B0(addr++, *src++);
        n--;
    }
}
