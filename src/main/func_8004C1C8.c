typedef unsigned int u32;

typedef struct {
    u32 state;
    void *framep;
} __OSViContext;

extern __OSViContext *D_80072468;
extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);

void *func_8004C1C8(void) {
    register u32 saveMask = __osDisableInt();
    void *framep = D_80072468->framep;

    func_8003FD08(saveMask);
    return framep;
}
