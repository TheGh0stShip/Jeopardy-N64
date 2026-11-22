typedef unsigned int u32;
typedef signed int s32;

extern s32 __osDisableInt(void);
extern void func_8003FD08(s32);
extern u32 D_80072348;

void func_800413F8(u32 mask) {
    register u32 saveMask = __osDisableInt();
    D_80072348 &= ~(mask & ~0x401);
    func_8003FD08(saveMask);
}
