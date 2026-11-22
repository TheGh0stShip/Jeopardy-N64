typedef unsigned int u32;
typedef int s32;
typedef void *OSMesg;
typedef s32 OSEvent;
typedef struct OSMesgQueue_s OSMesgQueue;

typedef struct {
    OSMesgQueue *messageQueue;
    OSMesg message;
} __OSEventState;

extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern __OSEventState D_800D2EC0[];

void func_800415A8(OSEvent event, OSMesgQueue *mq, OSMesg msg) {
    register u32 saveMask = __osDisableInt();
    __OSEventState *es;

    es = &D_800D2EC0[event];
    es->messageQueue = mq;
    es->message = msg;
    func_8003FD08(saveMask);
}
