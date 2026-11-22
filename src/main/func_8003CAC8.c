typedef unsigned int u32;
typedef signed int s32;
typedef volatile unsigned int vu32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_READ(addr) (*(vu32 *)PHYS_TO_K1(addr))
#define PI_STATUS_REG 0x04600010
#define PI_STATUS_DMA_BUSY 0x01
#define PI_STATUS_IO_BUSY 0x02

typedef struct {
    u32 unk_0;
    u32 unk_4;
    u32 unk_8;
    u32 baseAddress;
} OSPiHandle;

s32 func_8003CAC8(OSPiHandle *pihandle, u32 devAddr, u32 *data)
{
    register u32 stat;

    stat = IO_READ(PI_STATUS_REG);
    while (stat & (PI_STATUS_IO_BUSY | PI_STATUS_DMA_BUSY))
        stat = IO_READ(PI_STATUS_REG);
    *data = IO_READ(pihandle->baseAddress | devAddr);
    return 0;
}
