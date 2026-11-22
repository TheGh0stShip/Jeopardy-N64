typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;
typedef s32 OSPri;
typedef void *OSMesg;
typedef struct { u8 pad[0x18]; } OSMesgQueue;
typedef struct { u8 pad[0x1B0]; } OSThread;
typedef struct {
    u16 type;
    u8 pri;
    OSMesgQueue *retQueue;
} OSIoMesgHdr;
typedef struct {
    OSIoMesgHdr hdr;
    void *dramAddr;
    u32 devAddr;
    u32 size;
    void *piHandle;
} OSIoMesg;
typedef struct {
    s32 active;
    OSThread *thread;
    OSMesgQueue *cmdQueue;
    OSMesgQueue *evtQueue;
    OSMesgQueue *acsQueue;
    s32 (*dma)(s32, u32, void *, u32);
    s32 (*edma)(void *, s32, u32, void *, u32);
} OSDevMgr;

extern void __osTimerServicesInit(void);
extern void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
extern void osSetEventMesg(s32, OSMesgQueue *, OSMesg);
extern OSPri func_80047D28(OSThread *);
extern void osSetThreadPri(OSThread *, OSPri);
extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern void osCreateThread(OSThread *, s32, void (*)(void *), void *, void *, OSPri);
extern void __osViInit(void);
extern void osStartThread(OSThread *);
extern void func_8004D5C0(void *);

typedef unsigned long long u64;
typedef struct {
    u16 state;
    u16 retraceCount;
    void *framep;
    void *modep;
    u32 control;
    OSMesgQueue *msgq;
    OSMesg msg;
} __OSViContext;
extern u32 D_800D2F6C;
extern u64 D_800D2F60;
extern u32 D_800D2F68;
__OSViContext *func_8004DDE8(void);
void __osViSwapContext(void);
s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
s32 osSendMesg(OSMesgQueue *, OSMesg, s32);
u32 func_80043328(void);
void __osTimerInterrupt(void);

OSDevMgr D_80073288 = {0};
static OSThread D_800D3230;
static char D_800D33E0[0x1000];
static OSMesgQueue D_800D43E0;
static OSMesg D_800D43F8[5];
static OSIoMesg D_800D4410;
static OSIoMesg D_800D4428;

void func_8004D438(OSPri pri)
{
    u32 savedMask;
    OSPri oldPri;
    OSPri myPri;

    if (D_80073288.active == 0) {
        __osTimerServicesInit();
        osCreateMesgQueue(&D_800D43E0, D_800D43F8, 5);
        D_800D4410.hdr.type = 13;
        D_800D4410.hdr.pri = 0;
        D_800D4410.hdr.retQueue = 0;
        D_800D4428.hdr.type = 14;
        D_800D4428.hdr.pri = 0;
        D_800D4428.hdr.retQueue = 0;
        osSetEventMesg(7, &D_800D43E0, &D_800D4410);
        osSetEventMesg(3, &D_800D43E0, &D_800D4428);
        oldPri = -1;
        myPri = func_80047D28(0);
        if (myPri < pri) {
            oldPri = myPri;
            osSetThreadPri(0, pri);
        }
        savedMask = __osDisableInt();
        D_80073288.active = 1;
        D_80073288.thread = &D_800D3230;
        D_80073288.cmdQueue = &D_800D43E0;
        D_80073288.evtQueue = &D_800D43E0;
        D_80073288.acsQueue = 0;
        D_80073288.dma = 0;
        D_80073288.edma = 0;
        osCreateThread(&D_800D3230, 0, func_8004D5C0, &D_80073288, &D_800D33E0[0x1000], pri);
        __osViInit();
        osStartThread(&D_800D3230);
        func_8003FD08(savedMask);
        if (oldPri != -1) {
            osSetThreadPri(0, oldPri);
        }
    }
}

void func_8004D5C0(void *arg) {
    __OSViContext *vc;
    OSDevMgr *dm;
    OSIoMesg *mb;
    static u16 D_800D4440;
    s32 first;
    u32 count;

    mb = 0;
    first = 0;
    vc = func_8004DDE8();
    D_800D4440 = vc->retraceCount;
    if (D_800D4440 == 0) {
        D_800D4440 = 1;
    }
    dm = (OSDevMgr *)arg;

    while (1) {
        osRecvMesg(dm->evtQueue, (OSMesg *)&mb, 1);
        switch (mb->hdr.type) {
        case 13:
            __osViSwapContext();
            D_800D4440--;
            if (D_800D4440 == 0) {
                vc = func_8004DDE8();
                if (vc->msgq != 0) {
                    osSendMesg(vc->msgq, vc->msg, 0);
                }
                D_800D4440 = vc->retraceCount;
            }
            D_800D2F6C++;
            if (first) {
                count = func_80043328();
                D_800D2F60 = count;
                first = 0;
            }
            count = D_800D2F68;
            D_800D2F68 = func_80043328();
            count = D_800D2F68 - count;
            D_800D2F60 = D_800D2F60 + count;
            break;
        case 14:
            __osTimerInterrupt();
            break;
        default:
            break;
        }
    }
}
