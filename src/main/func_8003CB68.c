typedef unsigned int u32; typedef signed int s32;
extern u32 func_80043338(void *);
extern void *D_80000308;
#define IO_READ(a) (*(volatile u32 *)(0xA0000000 | (a)))
#define IO_WRITE(a, v) (*(volatile u32 *)(0xA0000000 | (a)) = (v))

s32 func_8003CB68(s32 direction, u32 devAddr, void *dramAddr, u32 size) {
    register u32 stat;
    stat = IO_READ(0x04600010);
    while (stat & 3)
        stat = IO_READ(0x04600010);
    IO_WRITE(0x04600000, func_80043338(dramAddr));
    IO_WRITE(0x04600004, ((u32)D_80000308 | devAddr) & 0x1FFFFFFF);
    switch (direction) {
    case 0:
        IO_WRITE(0x0460000C, size - 1);
        break;
    case 1:
        IO_WRITE(0x04600008, size - 1);
        break;
    default:
        return -1;
    }
    return 0;
}
