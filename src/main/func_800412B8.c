typedef signed int s32;
typedef unsigned int u32;
typedef signed short s16;
typedef unsigned short u16;
typedef void *OSMesg;

typedef struct OSThread_s {
    struct OSThread_s *next;
    s32 priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

typedef struct OSMesgQueue_s {
    OSThread *mtqueue;
    OSThread *fullqueue;
    s32 validCount;
    s32 first;
    s32 msgCount;
    OSMesg *msg;
} OSMesgQueue;

extern OSThread *D_80072328;
s32 __osDisableInt(void);
void func_8003FD08(s32);
void __osEnqueueAndYield(OSThread **);
OSThread *func_8004059C(OSThread **);
#define NULL 0
void osStartThread(OSThread *);

s32 func_800412B8(OSMesgQueue *mq, OSMesg *msg, s32 flags)
{
    register u32 saveMask;

    saveMask = __osDisableInt();
    while (mq->validCount == 0) {
        if (flags == 0) {
            func_8003FD08(saveMask);
            return -1;
        }
        D_80072328->state = 8;
        __osEnqueueAndYield(&mq->mtqueue);
    }
    if (msg != NULL) {
        *msg = mq->msg[mq->first];
    }
    mq->first = (mq->first + 1) % mq->msgCount;
    mq->validCount--;
    if (mq->fullqueue->next != NULL) {
        osStartThread(func_8004059C(&mq->fullqueue));
    }
    func_8003FD08(saveMask);
    return 0;
}
