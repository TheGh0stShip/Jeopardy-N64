typedef unsigned int u32;

void func_8004C4E8(u32 data) {
    *(volatile u32 *)0xA4040010 = data;
}
