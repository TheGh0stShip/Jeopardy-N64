typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32; typedef float f32;

typedef struct {
    u32 ctrl; u32 width; u32 burst; u32 vSync; u32 hSync; u32 leap; u32 hStart; u32 xScale; u32 vCurrent;
} OSViCommonRegs;
typedef struct {
    u32 origin; u32 yScale; u32 vStart; u32 vBurst; u32 vIntr;
} OSViFieldRegs;
typedef struct {
    u8 type;
    OSViCommonRegs comRegs;
    OSViFieldRegs fldRegs[2];
} OSViMode;
typedef struct {
    f32 factor; u16 offset; u32 scale;
} __OSViScale;
typedef struct {
    u16 state;
    u16 retraceCount;
    void *framep;
    OSViMode *modep;
    u32 control;
    void *msgq;
    void *msg;
    __OSViScale x;
    __OSViScale y;
} __OSViContext;

u32 __osDisableInt(void);
void func_8003FD08(u32);
extern __OSViContext *D_8007246C;

void func_8004D808(OSViMode *modep) {
    register u32 saveMask = __osDisableInt();
    D_8007246C->modep = modep;
    D_8007246C->state = 1;
    D_8007246C->control = D_8007246C->modep->comRegs.ctrl;
    func_8003FD08(saveMask);
}
