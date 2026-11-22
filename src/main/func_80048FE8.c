typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;

typedef void *OSMesg;
typedef u64 OSTime;
typedef struct OSMesgQueue_s {
    void *mtqueue;
    void *fullqueue;
    s32 validCount;
    s32 first;
    s32 msgCount;
    OSMesg *msg;
} OSMesgQueue;
typedef struct OSTimer_s {
    struct OSTimer_s *next;
    struct OSTimer_s *prev;
    OSTime interval;
    OSTime value;
    OSMesgQueue *mq;
    OSMesg msg;
} OSTimer;
typedef struct {
    u32 ramarray[15];
    u32 pifstatus;
} OSPifRam;

extern u64 D_80072338;
extern u32 D_80072368;
extern OSPifRam D_800D3160;
extern u8 D_800D31A0;
extern u8 D_800D31A1;
extern OSMesgQueue D_800D31C8;
extern OSMesg D_800D31E0;

OSTime osGetTime(void);
void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
s32 osSetTimer(OSTimer *, OSTime, OSTime, OSMesgQueue *, OSMesg);
s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
void __osPackRequestData(u8);
s32 __osSiRawStartDma(s32, void *);
void __osContGetInitData(u8 *, void *);
void __osSiCreateAccessQueue(void);

s32 func_80048FE8(OSMesgQueue *mq, u8 *bitpattern, void *data) {
    OSMesg dummy;
    s32 ret = 0;
    OSTime t;
    OSTimer mytimer;
    OSMesgQueue timerMesgQueue;

    if (D_80072368) {
        return 0;
    }
    D_80072368 = 1;
    t = osGetTime();
    if (t < (500000 * D_80072338 / 1000000)) {
        osCreateMesgQueue(&timerMesgQueue, &dummy, 1);
        osSetTimer(&mytimer, (500000 * D_80072338 / 1000000) - t, 0, &timerMesgQueue, &dummy);
        osRecvMesg(&timerMesgQueue, &dummy, 1);
    }
    D_800D31A1 = 4;
    __osPackRequestData(0);
    ret = __osSiRawStartDma(1, &D_800D3160);
    osRecvMesg(mq, &dummy, 1);
    ret = __osSiRawStartDma(0, &D_800D3160);
    osRecvMesg(mq, &dummy, 1);
    __osContGetInitData(bitpattern, data);
    D_800D31A0 = 0;
    __osSiCreateAccessQueue();
    osCreateMesgQueue(&D_800D31C8, &D_800D31E0, 1);
    return ret;
}
