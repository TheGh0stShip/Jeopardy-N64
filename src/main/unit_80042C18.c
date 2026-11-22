typedef signed short s16; typedef signed int s32; typedef unsigned int u32; typedef float f32;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    void *(*handler)(void *, s16 *, s32, s32, void *);
    s32 (*setParam)(void *, s32, void *);
    s16 inp;
    s16 outp;
    s32 type;
} ALFilter;

typedef struct {
    ALFilter filter;
    void *state;
    f32 ratio;
    s32 upitch;
    f32 delta;
    s32 first;
    s32 ctrlList;
    s32 ctrlTail;
    s32 motion;
} ALResampler;

typedef union {
    f32 f;
    s32 i;
} f32_i;


typedef struct {
    u32 w0;
    u32 w1;
} Awords;

typedef union {
    Awords words;
    long long force_union_align;
} Acmd;

#define _SHIFTL(v, s, w) ((u32)(((u32)(v) & ((0x01 << (w)) - 1)) << (s)))

#define aDMEMMove(pkt, i, o, c) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->words.w0 = _SHIFTL(10, 24, 8) | _SHIFTL(i, 0, 24); \
    _a->words.w1 = _SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16); \
}

#define aSetBuffer(pkt, f, i, o, c) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->words.w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); \
    _a->words.w1 = _SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16); \
}

#define aResample(pkt, f, p, s) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->words.w0 = (_SHIFTL(5, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(p, 0, 16)); \
    _a->words.w1 = (u32)(s); \
}

#define MAX_RATIO 1.99996
#define UNITY_PITCH 32768.0f

extern u32 func_80043338(void *);

Acmd *func_80042D04(void *filter, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p) {
    ALResampler *f = (ALResampler *) filter;
    Acmd *ptr = p;
    s16 inp;
    s32 inCount;
    ALFilter *source = f->filter.source;
    s32 incr;
    f32 finCount;

    inp = 0x140;

    if (!outCount) {
        return ptr;
    }

    if (f->upitch) {
        ptr = (*source->handler)(source, &inp, outCount, sampleOffset, p);
        aDMEMMove(ptr++, inp, *outp, outCount << 1);
    } else {
        if (f->ratio > MAX_RATIO) {
            f->ratio = MAX_RATIO;
        }
        f->ratio = (s32)(f->ratio * UNITY_PITCH);
        f->ratio = f->ratio / UNITY_PITCH;
        finCount = f->delta + (f->ratio * (f32) outCount);
        inCount = (s32) finCount;
        f->delta = finCount - (f32) inCount;

        ptr = (*source->handler)(source, &inp, inCount, sampleOffset, p);
        incr = (s32)(f->ratio * UNITY_PITCH);
        aSetBuffer(ptr++, 0, inp, *outp, outCount << 1);
        aResample(ptr++, f->first, incr, func_80043338(f->state));
        f->first = 0;
    }
    return ptr;
}

s32 func_80042C18(void *filter, s32 paramID, void *param) {
    ALFilter *f = (ALFilter *) filter;
    ALResampler *r = (ALResampler *) filter;
    f32_i data;

    switch (paramID) {
        case 1:
            f->source = (ALFilter *) param;
            break;
        case 4:
            r->delta = 0.0f;
            r->first = 1;
            r->motion = 0;
            r->upitch = 0;
            if (f->source) {
                (*f->source->setParam)(f->source, 4, 0);
            }
            break;
        case 9:
            r->motion = 1;
            if (f->source) {
                (*f->source->setParam)(f->source, 9, 0);
            }
            break;
        case 7:
            data.i = (s32) param;
            r->ratio = data.f;
            break;
        case 8:
            r->upitch = 1;
            break;
        default:
            if (f->source) {
                (*f->source->setParam)(f->source, paramID, param);
            }
            break;
    }
    return 0;
}
