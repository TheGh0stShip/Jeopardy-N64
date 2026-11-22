typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

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

OSPiHandle D_800D1DB0;
extern OSPiHandle *D_80071FD4;
extern s32 osPiRawReadIo(u32, u32 *);
extern void bzero(void *, s32);
extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);

OSPiHandle *func_8003C3A8(void) {
    u32 domain = 0;
    u32 saveMask;

    if (D_800D1DB0.baseAddress == 0xB0000000) {
        return &D_800D1DB0;
    }
    D_800D1DB0.type = 0;
    D_800D1DB0.baseAddress = 0xB0000000;
    osPiRawReadIo(0, &domain);
    D_800D1DB0.latency = (u8)(domain & 0xFF);
    D_800D1DB0.pulse = (u8)((domain >> 8) & 0xFF);
    D_800D1DB0.pageSize = (u8)((domain >> 16) & 0xF);
    D_800D1DB0.relDuration = (u8)((domain >> 20) & 0xF);
    D_800D1DB0.domain = 0;
    bzero(&D_800D1DB0.transferInfo, sizeof(__OSTranxInfo));
    saveMask = __osDisableInt();
    D_800D1DB0.next = D_80071FD4;
    D_80071FD4 = &D_800D1DB0;
    func_8003FD08(saveMask);
    return &D_800D1DB0;
}
