typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32; typedef int s32;

typedef struct {
    u32 errStatus;
    void *dramAddr;
    void *C2Addr;
    u32 sectorSize;
    u32 C1ErrNum;
    u32 C1ErrSector[4];
} __OSBlockInfo;

typedef struct {
    u32 cmdType;
    u16 transferMode;
    u16 blockNum;
    s32 sectorNum;
    u32 devAddr;
    u32 bmCtlShadow;
    u32 seqCtlShadow;
    __OSBlockInfo block[2];
} __OSTranxInfo;

typedef struct OSPiHandle_s {
    struct OSPiHandle_s *next;
    u8 type;
    u8 latency;
    u8 pageSize;
    u8 relDuration;
    u8 pulse;
    u8 domain;
    u32 baseAddress;
    u32 speed;
    __OSTranxInfo transferInfo;
} OSPiHandle;

#define IO_WRITE(addr, data) (*(volatile u32 *)(addr) = (u32)(data))
#define PI_BSD_DOM2_LAT_REG 0xA4600024
#define PI_BSD_DOM2_PWD_REG 0xA4600028
#define PI_BSD_DOM2_PGS_REG 0xA460002C
#define PI_BSD_DOM2_RLS_REG 0xA4600030

extern OSPiHandle *D_80071FD4;
extern OSPiHandle *D_800D1EA4;
OSPiHandle D_800D1E30;

extern s32 __osDisableInt(void);
extern void func_8003FD08(s32);
extern void func_8003C498(void *, s32);

OSPiHandle *func_8003C538(void) {
    u32 saveMask;

    D_800D1E30.type = 2;
    D_800D1E30.baseAddress = 0xA5000000;
    D_800D1E30.latency = 3;
    D_800D1E30.pulse = 6;
    D_800D1E30.pageSize = 6;
    D_800D1E30.relDuration = 2;
    D_800D1E30.domain = 1;
    IO_WRITE(PI_BSD_DOM2_LAT_REG, D_800D1E30.latency);
    IO_WRITE(PI_BSD_DOM2_PWD_REG, D_800D1E30.pulse);
    IO_WRITE(PI_BSD_DOM2_PGS_REG, D_800D1E30.pageSize);
    IO_WRITE(PI_BSD_DOM2_RLS_REG, D_800D1E30.relDuration);
    func_8003C498(&D_800D1E30.transferInfo, sizeof(__OSTranxInfo));
    saveMask = __osDisableInt();
    D_800D1E30.next = D_80071FD4;
    D_80071FD4 = &D_800D1E30;
    D_800D1EA4 = &D_800D1E30;
    func_8003FD08(saveMask);
    return &D_800D1E30;
}
