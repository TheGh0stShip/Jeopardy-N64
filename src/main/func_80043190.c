typedef int s32; typedef unsigned int u32; typedef unsigned long long u64;

typedef struct OSTimer_s {
    struct OSTimer_s *next;
    struct OSTimer_s *prev;
    u64 interval;
    u64 value;
    void *mq;
    void *msg;
} OSTimer_t;

extern OSTimer_t *D_80072308;
s32 __osDisableInt(void);
void func_8003FD08(s32);

u64 func_80043190(OSTimer_t *t)
{
    OSTimer_t *timep;
    u64 tim;
    s32 savedMask;

    savedMask = __osDisableInt();
    for (timep = D_80072308->next, tim = t->value;
         timep != D_80072308 && tim > timep->value;
         timep = timep->next) {
        tim -= timep->value;
    }
    t->value = tim;
    if (timep != D_80072308)
        timep->value -= tim;
    t->next = timep;
    t->prev = timep->prev;
    timep->prev->next = t;
    timep->prev = t;
    func_8003FD08(savedMask);
    return tim;
}
