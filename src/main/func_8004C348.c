typedef int s32; typedef unsigned int u32;
typedef struct OSThread_s { struct OSThread_s *next; s32 priority; } OSThread;
extern OSThread *D_8007246C;
extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);

s32 func_8004C348(void) {
    register u32 saveMask = __osDisableInt();
    s32 pri;
    pri = D_8007246C->priority;
    func_8003FD08(saveMask);
    return pri;
}
