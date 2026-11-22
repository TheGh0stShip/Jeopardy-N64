#define NULL ((void *)0)
typedef unsigned short u16; typedef int s32; typedef unsigned int u32;
typedef struct OSThread_s {
    struct OSThread_s *next;
    s32 priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

extern OSThread *D_80072320;
extern OSThread *D_80072328;
s32 __osDisableInt(void);
void func_8003FD08(s32);
void __osEnqueueThread(OSThread **, OSThread *);
OSThread *func_8004059C(OSThread **);
void __osDispatchThread(void);
void __osEnqueueAndYield(OSThread **);

void func_80047B98(OSThread *t) {
    register u32 saveMask = __osDisableInt();

    switch (t->state) {
    case 8:
        t->state = 2;
        __osEnqueueThread(&D_80072320, t);
        break;
    case 1:
        if (t->queue == NULL || t->queue == &D_80072320) {
            t->state = 2;
            __osEnqueueThread(&D_80072320, t);
        } else {
            t->state = 8;
            __osEnqueueThread(t->queue, t);
            __osEnqueueThread(&D_80072320, func_8004059C(t->queue));
        }
        break;
    }
    if (D_80072328 == NULL) {
        __osDispatchThread();
    } else if (D_80072328->priority < D_80072320->priority) {
        D_80072328->state = 2;
        __osEnqueueAndYield(&D_80072320);
    }
    func_8003FD08(saveMask);
}
