typedef unsigned char u8; typedef unsigned int u32; typedef int s32;
u32 func_80039EC0(u32 addr);
void func_80039E88(u32 addr, u32 val);

void func_8003A1B0(u32 addr, u8 val) {
    s32 shift = (~addr & 3) * 8;
    addr &= ~3;
    func_80039E88(addr, (func_80039EC0(addr) & ~(0xFF << shift)) | (val << shift));
}
