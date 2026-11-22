typedef signed int s32; typedef unsigned int u32;

s32 __osSpDeviceBusy(void);
u32 osVirtualToPhysical(void *);

#define IO_WRITE(addr, data) (*(volatile u32 *)(addr) = (u32)(data))
#define SP_MEM_ADDR_REG  0xA4040000
#define SP_DRAM_ADDR_REG 0xA4040004
#define SP_RD_LEN_REG    0xA4040008
#define SP_WR_LEN_REG    0xA404000C
#define OS_READ 0

s32 func_8004C098(s32 direction, u32 devAddr, void *dramAddr, u32 size)
{
    if (__osSpDeviceBusy())
        return -1;
    IO_WRITE(SP_MEM_ADDR_REG, devAddr);
    IO_WRITE(SP_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));
    if (direction == OS_READ) {
        IO_WRITE(SP_WR_LEN_REG, size - 1);
    } else {
        IO_WRITE(SP_RD_LEN_REG, size - 1);
    }
    return 0;
}
