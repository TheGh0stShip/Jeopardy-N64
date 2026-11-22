#define NULL ((void *)0)
typedef unsigned short u16; typedef signed int s32; typedef unsigned int u32;
typedef void *OSMesg;

typedef struct OSThread_s {
    struct OSThread_s *next;
    s32 priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

typedef struct {
    OSThread *mtqueue;
    OSThread *fullqueue;
    s32 validCount;
    s32 first;
    s32 msgCount;
    OSMesg *msg;
} OSMesgQueue;

u32 __osDisableInt(void);
void func_8003FD08(u32);
void __osEnqueueAndYield(OSThread **);
OSThread *func_8004059C(OSThread **);
void osStartThread(OSThread *);
extern OSThread *D_80072328;

s32 func_80041458(OSMesgQueue *mq, OSMesg msg, s32 flags) {
    register u32 saveMask;
    register s32 last;

    saveMask = __osDisableInt();
    while (mq->validCount >= mq->msgCount) {
        if (flags == 1) {
            D_80072328->state = 8;
            __osEnqueueAndYield(&mq->fullqueue);
        } else {
            func_8003FD08(saveMask);
            return -1;
        }
    }
    last = (mq->first + mq->validCount) % mq->msgCount;
    mq->msg[last] = msg;
    mq->validCount++;
    if (mq->mtqueue->next != NULL) {
        osStartThread(func_8004059C(&mq->mtqueue));
    }
    func_8003FD08(saveMask);
    return 0;
}
