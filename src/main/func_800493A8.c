typedef unsigned long long u64;
typedef u64 OSTime;
typedef void *OSMesg;
typedef struct OSMesgQueue_s OSMesgQueue;

typedef struct OSTimer_s {
    struct OSTimer_s *next;
    struct OSTimer_s *prev;
    OSTime interval;
    OSTime value;
    OSMesgQueue *mq;
    OSMesg msg;
} OSTimer;

extern OSTimer *D_80072308;
extern OSTime func_80043190(OSTimer *t);
extern void func_8004311C(OSTime time);

int func_800493A8(OSTimer *t, OSTime countdown, OSTime interval, OSMesgQueue *mq, OSMesg msg)
{
    OSTime time;

    t->next = 0;
    t->prev = 0;
    t->interval = interval;
    if (countdown != 0) {
        t->value = countdown;
    } else {
        t->value = interval;
    }
    t->mq = mq;
    t->msg = msg;
    time = func_80043190(t);
    if (D_80072308->next == t) {
        func_8004311C(time);
    }
    return 0;
}
