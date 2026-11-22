typedef unsigned int u32;
typedef unsigned long long u64;

extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern u32 func_80043328(void);
extern u64 D_800D2F60;
extern u32 D_800D2F68;

u64 func_80047D48(void) {
    u32 tmptime;
    u32 elapseCount;
    u64 currentCount;
    register u32 saveMask;

    saveMask = __osDisableInt();
    tmptime = func_80043328();
    elapseCount = tmptime - D_800D2F68;
    currentCount = D_800D2F60;
    func_8003FD08(saveMask);
    return currentCount + elapseCount;
}
