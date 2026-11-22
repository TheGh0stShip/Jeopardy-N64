typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
#define NULL 0

typedef struct OSThread_s {
    struct OSThread_s *next;
    s32 priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

extern OSThread *D_80072324;
extern OSThread *D_80072328;
s32 __osDisableInt(void);
void func_8003FD08(s32);
void __osDequeueThread(OSThread **, OSThread *);
void __osDispatchThread(void);

void func_800417B8(OSThread *t)
{
    register s32 saveMask;
    register OSThread *pred;
    register OSThread *succ;

    saveMask = __osDisableInt();

    if (t == NULL) {
        t = D_80072328;
    } else if (t->state != 1) {
        __osDequeueThread(t->queue, t);
    }

    if (D_80072324 == t) {
        D_80072324 = D_80072324->tlnext;
    } else {
        pred = D_80072324;
        succ = pred->tlnext;
        while (succ != NULL) {
            if (succ == t) {
                pred->tlnext = t->tlnext;
                break;
            }
            pred = succ;
            succ = pred->tlnext;
        }
    }

    if (t == D_80072328) {
        __osDispatchThread();
    }
    func_8003FD08(saveMask);
}
