typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;
#define NULL ((void *)0)

typedef s32 OSPri;
typedef s32 OSId;
typedef u32 OSIntMask;

typedef struct {
    u64 at, v0, v1, a0, a1, a2, a3;
    u64 t0, t1, t2, t3, t4, t5, t6, t7;
    u64 s0, s1, s2, s3, s4, s5, s6, s7;
    u64 t8, t9, gp, sp, s8, ra;
    u64 lo, hi;
    u32 sr, pc, cause, badvaddr, rcp;
    u32 fpcsr;
    f64 fp0, fp2, fp4, fp6, fp8, fp10, fp12, fp14;
    f64 fp16, fp18, fp20, fp22, fp24, fp26, fp28, fp30;
} __OSThreadContext;

typedef struct OSThread_s {
    struct OSThread_s *next;
    OSPri priority;
    struct OSThread_s **queue;
    struct OSThread_s *tlnext;
    u16 state;
    u16 flags;
    OSId id;
    int fp;
    __OSThreadContext context;
} OSThread;

extern s32 __osDisableInt(void);
extern void func_8003FD08(s32);
extern void func_80040728(void);
extern OSThread *D_80072324;

void func_80041668(OSThread *t, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri p) {
    register u32 saveMask;
    OSIntMask mask;

    t->id = id;
    t->priority = p;
    t->next = NULL;
    t->queue = NULL;
    t->context.pc = (u32)entry;
    t->context.a0 = (s64)(s32)arg;
    t->context.sp = (s64)(s32)sp - 16;
    t->context.ra = (s64)(s32)func_80040728;
    mask = 0x3FFF01;
    t->context.sr = 0xFF03;
    t->context.rcp = (mask & 0x3F0000) >> 16;
    t->context.fpcsr = 0x01000800;
    t->fp = 0;
    t->state = 1;
    t->flags = 0;
    saveMask = __osDisableInt();
    t->tlnext = D_80072324;
    D_80072324 = t;
    func_8003FD08(saveMask);
}
