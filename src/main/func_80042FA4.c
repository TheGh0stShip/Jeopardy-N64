typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;
#ifndef NULL
#define NULL ((void *)0)
#endif

typedef u64 OSTime;
typedef struct OSTimer_s {
    struct OSTimer_s *next;
    struct OSTimer_s *prev;
    OSTime interval;
    OSTime value;
    void *mq;
    void *msg;
} OSTimer;

extern OSTimer *D_80072308;
extern u32 D_800D2F70;
void func_80043318(u32);
u32 func_80043328(void);
void __osSetTimerIntr(OSTime);
OSTime __osInsertTimer(OSTimer *);
s32 osSendMesg(void *, void *, s32);

void func_80042FA4(void) {
    OSTimer *t;
    u32 count;
    u32 elapsed_cycles;

    if (D_80072308->next == D_80072308) {
        return;
    }
    for (;;) {
        t = D_80072308->next;
        if (t == D_80072308) {
            func_80043318(0);
            D_800D2F70 = 0;
            break;
        }
        count = func_80043328();
        elapsed_cycles = count - D_800D2F70;
        D_800D2F70 = count;
        if (elapsed_cycles < t->value) {
            t->value -= elapsed_cycles;
            __osSetTimerIntr(t->value);
            return;
        } else {
            t->prev->next = t->next;
            t->next->prev = t->prev;
            t->next = NULL;
            t->prev = NULL;
            if (t->mq != NULL) {
                osSendMesg(t->mq, t->msg, 0);
            }
            if (t->interval != 0) {
                t->value = t->interval;
                __osInsertTimer(t);
            }
        }
    }
}
