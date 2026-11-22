typedef int s32;
typedef unsigned int u32;

#define PHYS_TO_K1(x) ((u32)(x) | 0xA0000000)
#define IO_READ(addr) (*(volatile u32 *)PHYS_TO_K1(addr))
#define IO_WRITE(addr, data) (*(volatile u32 *)PHYS_TO_K1(addr) = (u32)(data))
#define SP_STATUS_REG 0x04040010
#define SP_PC_REG 0x04080000
#define SP_STATUS_HALT 0x0001

s32 func_8004C388(u32 pc) {
    register u32 status = IO_READ(SP_STATUS_REG);

    if (!(status & SP_STATUS_HALT)) {
        return -1;
    }
    IO_WRITE(SP_PC_REG, pc);
    return 0;
}
