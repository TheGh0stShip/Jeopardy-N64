typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;
typedef void *OSMesg;


typedef struct OSThread {
    struct OSThread *next;
    s32 priority;
    struct OSThread **queue;
    struct OSThread *tlnext;
    s16 state;
    s16 flags;
} OSThread;

typedef struct {
    OSThread *mtqueue;
    OSThread *fullqueue;
    s32 validCount;
    s32 first;
    s32 msgCount;
    OSMesg *msg;
} OSMesgQueue;

extern OSThread *D_80072328;
extern s32 __osDisableInt(void);
extern void func_8003FD08(s32);
extern void __osEnqueueAndYield(OSThread **);
extern OSThread *func_8004059C(OSThread **);
extern void osStartThread(OSThread *);

s32 func_80048708(OSMesgQueue *mq, OSMesg msg, s32 flag) {
    register u32 saveMask;

    saveMask = __osDisableInt();
    while (mq->validCount >= mq->msgCount) {
        if (flag == 1) {
            D_80072328->state = 8;
            __osEnqueueAndYield(&mq->fullqueue);
        } else {
            func_8003FD08(saveMask);
            return -1;
        }
    }
    mq->first = (mq->first + mq->msgCount - 1) % mq->msgCount;
    mq->msg[mq->first] = msg;
    mq->validCount++;
    if (mq->mtqueue->next != 0) {
        osStartThread(func_8004059C(&mq->mtqueue));
    }
    func_8003FD08(saveMask);
    return 0;
}
