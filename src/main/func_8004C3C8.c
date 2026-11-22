typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;

extern s32 __osDpDeviceBusy(void);
extern u32 osVirtualToPhysical(void *);

#define IO_READ(addr) (*(volatile u32 *)(addr))
#define IO_WRITE(addr, data) (*(volatile u32 *)(addr) = (u32)(data))

s32 func_8004C3C8(void *buf, u64 size) {
    register u32 stat;

    if (__osDpDeviceBusy()) {
        return -1;
    }
    IO_WRITE(0xA410000C, 1);
    do {
        stat = IO_READ(0xA410000C);
    } while (stat & 1);
    IO_WRITE(0xA4100000, osVirtualToPhysical(buf));
    IO_WRITE(0xA4100004, osVirtualToPhysical(buf) + size);
    return 0;
}
