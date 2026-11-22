typedef unsigned int u32;
typedef signed int s32;

extern u32 D_80000308;

#define IO_READ(addr) (*(volatile u32 *)(0xA0000000 | (addr)))

s32 func_80041258(u32 devAddr, u32 *data) {
    register u32 stat;

    stat = IO_READ(0x04600010);
    while (stat & 3) {
        stat = IO_READ(0x04600010);
    }
    *data = IO_READ(D_80000308 | devAddr);
    return 0;
}
