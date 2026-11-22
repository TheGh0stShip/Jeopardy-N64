typedef unsigned int u32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_READ(addr) (*(volatile u32 *)PHYS_TO_K1(addr))
#define PI_BASE_REG 0x04600000
#define PI_STATUS_REG (PI_BASE_REG + 0x10)

u32 osPiGetStatus(void) {
    return IO_READ(PI_STATUS_REG);
}
