typedef signed int s32; typedef unsigned int u32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_READ(addr) (*(volatile u32 *)PHYS_TO_K1(addr))
#define AI_STATUS_REG 0x0450000C
#define AI_STATUS_FIFO_FULL (1 << 31)

s32 func_8003BEF8(void) {
    register s32 status = IO_READ(AI_STATUS_REG);

    if (status & AI_STATUS_FIFO_FULL) {
        return 1;
    }
    return 0;
}
