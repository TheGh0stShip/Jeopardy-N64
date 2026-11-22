typedef signed int s32; typedef unsigned int u32;
void func_80039E88(u32 addr, u32 val);
u32 func_80039EC0(u32 addr);
void func_80039EFC(s32 n);

s32 func_8003A89C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_80039E88(0xB1FFFFE4, arg1);
    func_80039E88(0xB1FFFFE8, arg2);
    func_80039E88(0xB1FFFFEC, arg3);
    func_80039E88(0xB1FFFFE0, arg0);
    do {
        func_80039EFC(1000);
    } while (func_80039EC0(0xB1FFFFE0));
    return func_80039EC0(0xB1FFFFDC);
}
