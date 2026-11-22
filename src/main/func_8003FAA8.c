typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef s32 OSPri;

typedef struct OSThread_s {
    struct OSThread_s *next;
    OSPri priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

extern OSThread *D_80072320;
extern OSThread *D_80072328;
s32 __osDisableInt(void);
void func_8003FD08(s32);
void __osDequeueThread(OSThread **, OSThread *);
void __osEnqueueThread(OSThread **, OSThread *);
void __osEnqueueAndYield(OSThread **);

void func_8003FAA8(OSThread *t, OSPri pri)
{
    register u32 saveMask = __osDisableInt();

    if (t == 0)
        t = D_80072328;
    if (t->priority != pri) {
        t->priority = pri;
        if (t != D_80072328) {
            if (t->state != 1) {
                __osDequeueThread(t->queue, t);
                __osEnqueueThread(t->queue, t);
            }
        }
        if (D_80072328->priority < D_80072320->priority) {
            D_80072328->state = 2;
            __osEnqueueAndYield(&D_80072320);
        }
    }
    func_8003FD08(saveMask);
}
