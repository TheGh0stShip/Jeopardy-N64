typedef unsigned char u8;
typedef unsigned int u32;
typedef signed int s32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_READ(addr) (*(volatile u32 *)PHYS_TO_K1(addr))
#define IO_WRITE(addr, data) (*(volatile u32 *)PHYS_TO_K1(addr) = (u32)(data))
#define PI_STATUS_REG 0x04600010
#define PI_STATUS_DMA_BUSY 0x01
#define PI_STATUS_IO_BUSY 0x02

typedef struct {
    /* 0x00 */ void *next;
    /* 0x04 */ u32 type;
    /* 0x08 */ u32 unk08;
    /* 0x0C */ u32 baseAddress;
} OSPiHandle;

s32 func_8003CB18(OSPiHandle *pihandle, u32 devAddr, u32 data) {
    register u32 stat;

    stat = IO_READ(PI_STATUS_REG);
    while (stat & (PI_STATUS_IO_BUSY | PI_STATUS_DMA_BUSY)) {
        stat = IO_READ(PI_STATUS_REG);
    }
    IO_WRITE(pihandle->baseAddress | devAddr, data);
    return 0;
}
