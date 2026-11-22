typedef unsigned short u16; typedef short s16; typedef unsigned int u32; typedef int s32; typedef float f32;
typedef void *OSMesg;

typedef struct {
    u32 ctrl; u32 width; u32 burst; u32 vSync; u32 hSync; u32 leap; u32 hStart; u32 xScale; u32 vCurrent;
} OSViCommonRegs;
typedef struct {
    u32 origin; u32 yScale; u32 vStart; u32 vBurst; u32 vIntr;
} OSViFieldRegs;
typedef struct {
    unsigned char type;
    OSViCommonRegs comRegs;
    OSViFieldRegs fldRegs[2];
} OSViMode;

typedef struct {
    f32 factor;
    u16 offset;
    u32 scale;
} __OSViScale;

typedef struct {
    u16 state;
    u16 retraceCount;
    void *framep;
    OSViMode *modep;
    u32 control;
    void *msgq;
    OSMesg msg;
    __OSViScale x;
    __OSViScale y;
} __OSViContext;

extern void bzero(void *, int);
extern void __osViSwapContext(void);
extern s32 D_80000300;
extern OSViMode D_80072478, D_800724C8, D_80072518;
extern __OSViContext D_80072408[2];
extern __OSViContext *D_80072468;
extern __OSViContext *D_8007246C;

#define IO_READ(a) (*(volatile u32 *)(a))
#define IO_WRITE(a, v) (*(volatile u32 *)(a) = (v))

void func_8004C208(void)
{
    bzero(D_80072408, sizeof(D_80072408));
    D_80072468 = &D_80072408[0];
    D_8007246C = &D_80072408[1];
    D_8007246C->retraceCount = 1;
    D_80072468->retraceCount = 1;
    D_8007246C->framep = (void *)0x80000000;
    D_80072468->framep = (void *)0x80000000;
    if (D_80000300 == 0) {
        D_8007246C->modep = &D_80072478;
    } else if (D_80000300 == 2) {
        D_8007246C->modep = &D_800724C8;
    } else {
        D_8007246C->modep = &D_80072518;
    }
    D_8007246C->state = 0x20;
    D_8007246C->control = D_8007246C->modep->comRegs.ctrl;
    while (IO_READ(0xA4400010) > 10)
        ;
    IO_WRITE(0xA4400000, 0);
    __osViSwapContext();
}
