typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;
s32 func_80039F44(s32 addr);
void func_8003A1B0(s32 addr, u8 val);

void func_8003A3E0(s32 dst, s32 src, u32 n) {
    while (n-- != 0) {
        func_8003A1B0(dst++, func_80039F44(src++));
    }
}
