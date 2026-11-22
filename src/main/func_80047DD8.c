typedef signed int s32;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef struct {
    u32 inst1;
    u32 inst2;
    u32 inst3;
    u32 inst4;
} __osExceptionVector;

extern u32 func_80048348(void);
extern void func_80048078(u32);
extern void func_80048068(u32);
extern s32 __osSiRawReadIo(u32, u32 *);
extern s32 __osSiRawWriteIo(u32, u32);
extern void osWritebackDCache(void *, s32);
extern void osInvalICache(void *, s32);
extern void osMapTLBRdb(void);
extern s32 osPiRawReadIo(u32, u32 *);
extern void bzero(void *, s32);
extern void func_8003FE28(void);

extern s32 D_800D3130;
u64 D_80072338 = 62500000LL;
extern s32 D_80000300;
extern s32 D_8000030C;
extern s32 D_8000031C[];
u32 D_80072340 = 0x02E6D354;

void func_80047DD8(void)
{
    u32 pifdata;
    u32 clock = 0;

    D_800D3130 = 1;
    func_80048078(func_80048348() | 0x20000000);
    func_80048068(0x01000800);
    while (__osSiRawReadIo(0x1FC007FC, &pifdata))
        ;
    while (__osSiRawWriteIo(0x1FC007FC, pifdata | 8))
        ;
    *(__osExceptionVector *)0x80000000 = *(__osExceptionVector *)func_8003FE28;
    *(__osExceptionVector *)0x80000080 = *(__osExceptionVector *)func_8003FE28;
    *(__osExceptionVector *)0x80000100 = *(__osExceptionVector *)func_8003FE28;
    *(__osExceptionVector *)0x80000180 = *(__osExceptionVector *)func_8003FE28;
    osWritebackDCache((void *)0x80000000, 0x190);
    osInvalICache((void *)0x80000000, 0x190);
    osMapTLBRdb();
    osPiRawReadIo(4, &clock);
    clock &= ~0xF;
    if (clock != 0) {
        D_80072338 = clock;
    }
    D_80072338 = D_80072338 * 3 / 4;
    if (D_8000030C == 0) {
        bzero(D_8000031C, 0x40);
    }
    if (D_80000300 == 0) {
        D_80072340 = 0x02F5B2D2;
    } else if (D_80000300 == 2) {
        D_80072340 = 0x02E6025C;
    } else {
        D_80072340 = 0x02E6D354;
    }
}
