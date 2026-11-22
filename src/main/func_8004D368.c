typedef unsigned int u32;
typedef int s32;

s32 func_8004D368(void) {
    register u32 stat = *(volatile u32 *)0xA4800018;
    if (stat & 3) {
        return 1;
    }
    return 0;
}
