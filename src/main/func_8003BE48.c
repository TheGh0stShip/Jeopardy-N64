typedef unsigned char u8;
typedef int s32;
typedef unsigned int u32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_WRITE(addr, data) (*(volatile u32 *)PHYS_TO_K1(addr) = (u32)(data))
#define AI_DRAM_ADDR_REG 0x04500000
#define AI_LEN_REG 0x04500004

extern s32 __osAiDeviceBusy(void);
extern u32 osVirtualToPhysical(void *);
extern u8 D_80071FA8;

s32 func_8003BE48(void *bufPtr, u32 size) {
    char *bptr = bufPtr;

    if (D_80071FA8 != 0) {
        bptr -= 0x2000;
    }
    if ((((u32)bufPtr + size) & 0x3FFF) == 0x2000) {
        D_80071FA8 = 1;
    } else {
        D_80071FA8 = 0;
    }
    if (__osAiDeviceBusy()) {
        return -1;
    }
    IO_WRITE(AI_DRAM_ADDR_REG, osVirtualToPhysical(bptr));
    IO_WRITE(AI_LEN_REG, size);
    return 0;
}
