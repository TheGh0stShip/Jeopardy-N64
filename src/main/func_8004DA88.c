typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef float f32;

typedef struct {
    u32 ctrl;
    u32 width;
    u32 burst;
    u32 vSync;
    u32 hSync;
    u32 leap;
    u32 hStart;
    u32 xScale;
    u32 vCurrent;
} OSViCommonRegs;

typedef struct {
    u32 origin;
    u32 yScale;
    u32 vStart;
    u32 vBurst;
    u32 vIntr;
} OSViFieldRegs;

typedef struct {
    u8 type;
    OSViCommonRegs comRegs;
    OSViFieldRegs fldRegs[2];
} OSViMode;

typedef struct {
    f32 factor;
    u16 offset;
    u32 scale;
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

extern __OSViContext *D_80072468;
extern __OSViContext *D_8007246C;
u32 osVirtualToPhysical(void *);

#define IO_READ(a) (*(volatile u32 *)(a))
#define IO_WRITE(a, v) (*(volatile u32 *)(a) = (u32)(v))

void func_8004DA88(void) {
    register OSViMode *vm;
    register __OSViContext *vc;
    u32 origin;
    u32 hStart;
    u32 nomValue;
    u32 field;

    field = 0;
    vc = D_8007246C;
    vm = vc->modep;
    field = IO_READ(0xA4400010) & 1;
    origin = osVirtualToPhysical(vc->framep) + vm->fldRegs[field].origin;
    if (vc->state & 2) {
        vc->x.scale |= vm->comRegs.xScale & ~0xFFF;
    } else {
        vc->x.scale = vm->comRegs.xScale;
    }
    if (vc->state & 4) {
        nomValue = vm->fldRegs[field].yScale & 0xFFF;
        vc->y.scale = vc->y.factor * nomValue;
        vc->y.scale |= vm->fldRegs[field].yScale & ~0xFFF;
    } else {
        vc->y.scale = vm->fldRegs[field].yScale;
    }
    hStart = vm->comRegs.hStart;
    if (vc->state & 0x20) {
        hStart = 0;
    }
    if (vc->state & 0x40) {
        vc->y.scale = 0;
        origin = osVirtualToPhysical(vc->framep);
    }
    if (vc->state & 0x80) {
        vc->y.scale = (vc->y.offset << 16) & 0x3FF0000;
        origin = osVirtualToPhysical(vc->framep);
    }
    IO_WRITE(0xA4400004, origin);
    IO_WRITE(0xA4400008, vm->comRegs.width);
    IO_WRITE(0xA4400014, vm->comRegs.burst);
    IO_WRITE(0xA4400018, vm->comRegs.vSync);
    IO_WRITE(0xA440001C, vm->comRegs.hSync);
    IO_WRITE(0xA4400020, vm->comRegs.leap);
    IO_WRITE(0xA4400024, hStart);
    IO_WRITE(0xA4400028, vm->fldRegs[field].vStart);
    IO_WRITE(0xA440002C, vm->fldRegs[field].vBurst);
    IO_WRITE(0xA440000C, vm->fldRegs[field].vIntr);
    IO_WRITE(0xA4400030, vc->x.scale);
    IO_WRITE(0xA4400034, vc->y.scale);
    IO_WRITE(0xA4400000, vc->control);
    D_8007246C = D_80072468;
    D_80072468 = vc;
    *D_8007246C = *D_80072468;
}
