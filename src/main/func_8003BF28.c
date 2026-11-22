typedef signed int s32; typedef unsigned int u32; typedef unsigned char u8;
#ifndef NULL
#define NULL ((void *)0)
#endif

typedef struct {
    s32 active;
    void *thread;
    void *cmdQueue;
    void *evtQueue;
    void *acsQueue;
    s32 (*dma)();
    s32 (*edma)();
} OSDevMgr;

s32 __osDisableInt(void);
void __osRestoreInt(s32);
void __osPiCreateAccessQueue(void);
s32 osGetThreadPri(void *);
void osCreateMesgQueue(void *, void *, s32);
void osCreateThread(void *, s32, void (*)(void *), void *, void *, s32);
void osSetEventMesg(s32, void *, void *);
void osSetThreadPri(void *, s32);
void osStartThread(void *);
void __osDevMgrMain(void *);
s32 osPiRawStartDma();
s32 osEPiRawStartDma();

OSDevMgr D_80071FB8 = { 0 };
extern s32 D_80071FE8;
extern u8 D_800D0BC0[];
extern u8 D_800D0D70[];
extern u8 D_800D1D70[];
extern u8 D_800D1D88[];
extern u8 D_800D1D98[];

void func_8003BF28(s32 pri, void *cmdQ, void *cmdBuf, s32 cmdMsgCnt)
{
    u32 savedMask;
    s32 oldPri;
    s32 myPri;

    if (!D_80071FB8.active) {
        osCreateMesgQueue(cmdQ, cmdBuf, cmdMsgCnt);
        osCreateMesgQueue(D_800D1D70, D_800D1D88, 1);
        if (!D_80071FE8) {
            __osPiCreateAccessQueue();
        }
        osSetEventMesg(8, D_800D1D70, (void *)0x22222222);
        oldPri = -1;
        myPri = osGetThreadPri(NULL);
        if (myPri < pri) {
            oldPri = myPri;
            osSetThreadPri(NULL, pri);
        }
        savedMask = __osDisableInt();
        D_80071FB8.active = 1;
        D_80071FB8.thread = D_800D0BC0;
        D_80071FB8.cmdQueue = cmdQ;
        D_80071FB8.evtQueue = D_800D1D70;
        D_80071FB8.acsQueue = D_800D1D98;
        D_80071FB8.dma = osPiRawStartDma;
        D_80071FB8.edma = osEPiRawStartDma;
        osCreateThread(D_800D0BC0, 0, __osDevMgrMain, &D_80071FB8, D_800D0D70 + 0x1000, pri);
        osStartThread(D_800D0BC0);
        __osRestoreInt(savedMask);
        if (oldPri != -1) {
            osSetThreadPri(NULL, oldPri);
        }
    }
}
