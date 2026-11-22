typedef unsigned long long u64;
typedef unsigned int u32;

typedef struct OSTimer_s {
    struct OSTimer_s *next;
    struct OSTimer_s *prev;
    u64 interval;
    u64 value;
    void *mq;
    void *msg;
} OSTimer;

u64 D_800D2F60;
u32 D_800D2F68;
u32 D_800D2F6C;
extern OSTimer *D_80072308;

void func_80042F18(void)
{
    D_800D2F60 = 0;
    D_800D2F68 = 0;
    D_800D2F6C = 0;
    D_80072308->prev = D_80072308;
    D_80072308->next = D_80072308->prev;
    D_80072308->value = 0;
    D_80072308->interval = D_80072308->value;
    D_80072308->mq = 0;
    D_80072308->msg = 0;
}
