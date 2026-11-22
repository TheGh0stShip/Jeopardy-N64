typedef unsigned int u32;
typedef unsigned short u16;

typedef struct OSThread_s {
    struct OSThread_s *next;
    int priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
} OSThread;

extern OSThread *D_80072328;
extern OSThread *D_80072320;
extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern void __osEnqueueAndYield(OSThread **);

void func_8003F2B8(void) {
    register u32 saveMask = __osDisableInt();
    D_80072328->state = 2;
    __osEnqueueAndYield(&D_80072320);
    func_8003FD08(saveMask);
}
