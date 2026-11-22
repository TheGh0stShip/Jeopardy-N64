typedef unsigned int u32;

extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern u32 D_80072348;

void func_80041618(u32 mask) {
    register u32 saveMask = __osDisableInt();
    D_80072348 |= mask;
    func_8003FD08(saveMask);
}
