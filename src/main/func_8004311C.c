typedef unsigned int u32;
typedef unsigned long long u64;
typedef u64 OSTime;

extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern u32 func_80043328(void);
extern void func_80043318(u32);
extern u32 D_800D2F70;

void func_8004311C(OSTime tim)
{
    OSTime NewTime;
    u32 savedMask;

    savedMask = __osDisableInt();
    D_800D2F70 = func_80043328();
    NewTime = tim + D_800D2F70;
    func_80043318(NewTime);
    func_8003FD08(savedMask);
}
