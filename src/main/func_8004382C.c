typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64; typedef signed long long s64;

typedef union {
    struct { u32 w0; u32 w1; } words;
    long long force_align;
} Acmd;

typedef s32 (*ALFilterHandler)(void *, s16 *, s32, s32, Acmd *);
typedef s32 (*ALSetFXParam)(void *, s32, void *);

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    ALFilterHandler handler;
    ALSetFXParam setParam;
    s16 inp;
    s16 outp;
    s32 type;
} ALFilter;

typedef short RESAMPLE_STATE[16];
typedef short POLEF_STATE[4];

typedef struct {
    ALFilter filter;
    RESAMPLE_STATE *state;
    f32 ratio;
    s32 upitch;
    f32 delta;
    s32 first;
} ALResampler;

typedef struct {
    ALFilter filter;
    s16 fc;
    s16 fgain;
    union { s16 fccoef[16]; s64 force_aligned; } fcvec;
    POLEF_STATE *fstate;
    s32 first;
} ALLowPass;

typedef struct {
    u32 input;
    u32 output;
    s16 ffcoef;
    s16 fbcoef;
    s16 gain;
    f32 rsinc;
    f32 rsval;
    s32 rsdelta;
    f32 rsgain;
    ALLowPass *lp;
    ALResampler *rs;
} ALDelay;

typedef struct {
    ALFilter filter;
    s16 *base;
    s16 *input;
} ALFx;

#define UNITY_PITCH 0x8000
#define fUNITY_PITCH (f32)UNITY_PITCH
#define AL_TEMP_2 0x280

#define _SHIFTL(v, s, w) ((u32)(((u32)(v) & ((0x01 << (w)) - 1)) << (s)))
#define aSetBuffer(pkt, f, i, o, c) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->words.w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); \
    _a->words.w1 = _SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16); }
#define aResample(pkt, f, p, s) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->words.w0 = (_SHIFTL(5, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(p, 0, 16)); \
    _a->words.w1 = (u32)(s); }

extern f32 _doModFunc(ALDelay *d, s32 count);
extern Acmd *_loadBuffer(ALFx *r, s16 *curr_ptr, s32 buff, s32 count, Acmd *p);
extern u32 osVirtualToPhysical(void *);

Acmd *func_8004382C(ALFx *r, ALDelay *d, s32 buff, s32 incount, Acmd *cmdptr)
{
    Acmd *ptr = cmdptr;
    s32 ratio, count, rbuff = AL_TEMP_2;
    s16 *out_ptr;
    f32 fincount, fratio, delta;
    s32 ramalign = 0, length;

    if (d->rs) {
        length = d->output - d->input;
        delta = _doModFunc(d, incount);
        delta /= length;
        delta = (s32)(delta * fUNITY_PITCH);
        delta = delta / UNITY_PITCH;
        fratio = 1.0 - delta;
        fincount = d->rs->delta + (fratio * (f32)incount);
        count = (s32)fincount;
        d->rs->delta = fincount - (f32)count;
        out_ptr = &r->input[-(d->output - d->rsdelta)];
        ramalign = ((s32)out_ptr & 0x7) >> 1;
        ptr = _loadBuffer(r, out_ptr - ramalign, rbuff, count + ramalign, ptr);
        aSetBuffer(ptr++, 0, rbuff + (ramalign << 1), buff, incount << 1);
        ratio = (s32)(fratio * UNITY_PITCH);
        aResample(ptr++, d->rs->first, ratio, osVirtualToPhysical(d->rs->state));
        d->rs->first = 0;
        d->rsdelta += count - incount;
    } else {
        out_ptr = &r->input[-d->output];
        ptr = _loadBuffer(r, out_ptr, buff, incount, ptr);
    }
    return ptr;
}
