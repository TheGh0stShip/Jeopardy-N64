typedef signed int s32; typedef unsigned int u32;

#define IO_WRITE(addr, data) (*(volatile u32 *)(addr) = (u32)(data))
#define SI_DRAM_ADDR_REG 0xA4800000
#define SI_PIF_ADDR_RD64B_REG 0xA4800004
#define SI_PIF_ADDR_WR64B_REG 0xA4800010
#define PIF_RAM_START 0x1FC007C0

extern s32 __osSiDeviceBusy(void);
extern void osWritebackDCache(void *, s32);
extern void osInvalDCache(void *, s32);
extern u32 osVirtualToPhysical(void *);

s32 func_80048E78(s32 direction, void *dramAddr) {
    if (__osSiDeviceBusy()) {
        return -1;
    }
    if (direction == 1) {
        osWritebackDCache(dramAddr, 64);
    }
    IO_WRITE(SI_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));
    if (direction == 0) {
        IO_WRITE(SI_PIF_ADDR_RD64B_REG, PIF_RAM_START);
    } else {
        IO_WRITE(SI_PIF_ADDR_WR64B_REG, PIF_RAM_START);
    }
    if (direction == 0) {
        osInvalDCache(dramAddr, 64);
    }
    return 0;
}
