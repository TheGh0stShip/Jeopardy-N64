typedef int s32;
typedef void *OSMesg;

typedef struct OSThread_s OSThread;

typedef struct OSMesgQueue_s {
    /* 0x00 */ OSThread *mtqueue;
    /* 0x04 */ OSThread *fullqueue;
    /* 0x08 */ s32 validCount;
    /* 0x0C */ s32 first;
    /* 0x10 */ s32 msgCount;
    /* 0x14 */ OSMesg *msg;
} OSMesgQueue;

/* __osThreadTail */
extern struct {
    OSThread *next;
    s32 priority;
} D_80072318;

void func_80048438(OSMesgQueue *mq, OSMesg *msg, s32 count) {
    mq->mtqueue = (OSThread *)&D_80072318;
    mq->fullqueue = (OSThread *)&D_80072318;
    mq->validCount = 0;
    mq->first = 0;
    mq->msgCount = count;
    mq->msg = msg;
}
