typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct { u32 w0; u32 w1; } Acmd;

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    union { f32 f; s32 i; } data;
    union { f32 f; s32 i; } moredata;
} ALParam;

typedef struct {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    s16 unity;
    f32 pitch;
    s16 volume;
    u8 pan;
    u8 fxMix;
    s32 samples;
    void *wave;
} ALStartParamAlt;

typedef struct {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    s16 unity;
    void *wave;
} ALStartParam;

typedef struct PVoice_s {
    char unk_00[0xD8];
    s32 offset;
} PVoice;

typedef struct {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    PVoice *pvoice;
} ALFreeParam;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    Acmd *(*handler)(void *, s16 *, s32, s32, Acmd *);
    s32 (*setParam)(void *, s32, void *);
    s16 inp;
    s16 outp;
    s32 type;
} ALFilter;

typedef struct {
    ALFilter filter;
    void *state;
    s16 pan;
    s16 volume;
    s16 cvolL;
    s16 cvolR;
    s16 dryamt;
    s16 wetamt;
    u16 lratl;
    s16 lratm;
    s16 ltgt;
    u16 rratl;
    s16 rratm;
    s16 rtgt;
    s32 delta;
    s32 segEnd;
    s32 first;
    ALParam *ctrlList;
    ALParam *ctrlTail;
    ALFilter **sources;
    s32 motion;
} ALEnvMixer;


extern s16 D_800721C8[];
extern void *D_80071FF8;
extern void func_8003CE28(void *, PVoice *);
extern void func_8003CEC0(ALParam *);
extern u32 func_80043338(void *);

#define eqpower D_800721C8
#define EQPOWER_LENGTH 128
#define _SHIFTL(v, s, w) ((unsigned int)(((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define aSetBuffer(pkt, f, i, o, c) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); _a->w1 = (_SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16)); }
#define aSetVolume(pkt, f, v, t, r) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(9, 24, 8) | _SHIFTL(f, 16, 16) | _SHIFTL(v, 0, 16)); _a->w1 = (_SHIFTL(t, 16, 16) | _SHIFTL(r, 0, 16)); }
#define aEnvMixer(pkt, f, s) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(3, 24, 8) | _SHIFTL(f, 16, 8)); _a->w1 = (unsigned int)(s); }

static Acmd *func_80041ECC(void *filter, s16 *inp, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p);
static s16 func_80041CFC(f64 vol, f64 tgt, s32 count, u16 *ratel);
static f32 func_80042164(f32 ivol, s32 samples, s16 ratem, u16 ratel);
f64 func_80041B30(f64 value, s32 *eptr);
f64 func_80041B08(f64 in, s32 ex);

Acmd *func_80042214(void *filter, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;
    ALEnvMixer *e = (ALEnvMixer *) filter;
    s16 inp;
    s32 lastOffset;
    s32 thisOffset = sampleOffset;
    s32 samples;
    s16 loutp = 0;
    s32 fVol;
    ALParam *thisParam;

    inp = 0;
    while (e->ctrlList != 0) {
        lastOffset = thisOffset;
        thisOffset = e->ctrlList->delta;
        samples = thisOffset - lastOffset;
        if (samples > outCount) {
            break;
        }
        switch (e->ctrlList->type) {
            case 13: {
                ALStartParamAlt *param = (ALStartParamAlt *) e->ctrlList;
                ALFilter *f = (ALFilter *) e;
                s32 tmp;

                if (param->unity) {
                    (*e->filter.setParam)(&e->filter, 8, 0);
                }
                (*e->filter.setParam)(&e->filter, 5, param->wave);
                (*e->filter.setParam)(&e->filter, 9, 0);

                e->first = 1;
                e->delta = 0;
                e->segEnd = param->samples;

                tmp = ((s32) param->volume * (s32) param->volume) >> 15;
                e->volume = (s16) tmp;
                e->pan = param->pan;
                e->dryamt = eqpower[param->fxMix];
                e->wetamt = eqpower[EQPOWER_LENGTH - param->fxMix - 1];

                if (param->samples) {
                    e->cvolL = 1;
                    e->cvolR = 1;
                } else {
                    e->cvolL = (eqpower[e->pan] * e->volume) >> 15;
                    e->cvolR = (eqpower[EQPOWER_LENGTH - e->pan - 1] * e->volume) >> 15;
                }

                if (f->source) {
                    union { f32 f; s32 i; } data;
                    data.f = param->pitch;
                    (*f->source->setParam)(f->source, 7, (void *) data.i);
                }
            }
            break;

            case 16:
            case 12:
            case 11:
                ptr = func_80041ECC(e, &inp, &loutp, samples, sampleOffset, ptr);

                if (e->delta >= e->segEnd) {
                    e->ltgt = (eqpower[e->pan] * e->volume) >> 15;
                    e->rtgt = (eqpower[EQPOWER_LENGTH - e->pan - 1] * e->volume) >> 15;
                    e->delta = e->segEnd;
                    e->cvolL = e->ltgt;
                    e->cvolR = e->rtgt;
                } else {
                    e->cvolL = func_80042164(e->cvolL, e->delta, e->lratm, e->lratl);
                    e->cvolR = func_80042164(e->cvolR, e->delta, e->rratm, e->rratl);
                }

                if (e->cvolL == 0) e->cvolL = 1;
                if (e->cvolR == 0) e->cvolR = 1;

                if (e->ctrlList->type == 12)
                    e->pan = (s16) e->ctrlList->data.i;

                if (e->ctrlList->type == 11) {
                    e->delta = 0;
                    fVol = (e->ctrlList->data.i);
                    fVol = (fVol * fVol) >> 15;
                    e->volume = (s16) fVol;
                    e->segEnd = e->ctrlList->moredata.i;
                }

                if (e->ctrlList->type == 16) {
                    e->dryamt = eqpower[e->ctrlList->data.i];
                    e->wetamt = eqpower[EQPOWER_LENGTH - e->ctrlList->data.i - 1];
                }

                e->first = 1;
                break;

            case 14: {
                ALStartParam *p = (ALStartParam *) e->ctrlList;

                if (p->unity) {
                    (*e->filter.setParam)(&e->filter, 8, 0);
                }
                (*e->filter.setParam)(&e->filter, 5, p->wave);
                (*e->filter.setParam)(&e->filter, 9, 0);
            }
            break;

            case 15: {
                ptr = func_80041ECC(e, &inp, &loutp, samples, sampleOffset, ptr);
                (*e->filter.setParam)(&e->filter, 4, 0);
            }
            break;

            case 0: {
                void *drvr = D_80071FF8;
                ALFreeParam *param = (ALFreeParam *) e->ctrlList;
                param->pvoice->offset = 0;
                func_8003CE28(drvr, (PVoice *) param->pvoice);
            }
            break;

            default:
                ptr = func_80041ECC(e, &inp, &loutp, samples, sampleOffset, ptr);
                (*e->filter.setParam)(&e->filter, e->ctrlList->type, (void *) e->ctrlList->data.i);
                break;
        }
        loutp += (samples << 1);
        outCount -= samples;

        thisParam = e->ctrlList;
        e->ctrlList = e->ctrlList->next;
        if (e->ctrlList == 0)
            e->ctrlTail = 0;

        func_8003CEC0(thisParam);
    }

    ptr = func_80041ECC(e, &inp, &loutp, outCount, sampleOffset, ptr);

    if (e->delta > e->segEnd)
        e->delta = e->segEnd;

    return ptr;
}

s32 func_80041C1C(void *filter, s32 paramID, void *param) {
    ALFilter *f = (ALFilter *) filter;
    ALEnvMixer *e = (ALEnvMixer *) filter;

    switch (paramID) {
        case 3:
            if (e->ctrlTail) {
                e->ctrlTail->next = (ALParam *) param;
            } else {
                e->ctrlList = (ALParam *) param;
            }
            e->ctrlTail = (ALParam *) param;
            break;
        case 4:
            e->first = 1;
            e->motion = 0;
            e->volume = 1;
            if (f->source) {
                (*f->source->setParam)(f->source, 4, param);
            }
            break;
        case 9:
            e->motion = 1;
            if (f->source) {
                (*f->source->setParam)(f->source, 9, param);
            }
            break;
        case 1:
            f->source = (ALFilter *) param;
            break;
        default:
            if (f->source) {
                (*f->source->setParam)(f->source, paramID, param);
            }
            break;
    }
    return 0;
}

static Acmd *func_80041ECC(void *filter, s16 *inp, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;
    ALEnvMixer *e = (ALEnvMixer *) filter;
    ALFilter *source = e->filter.source;

    if (e->motion != 1 || !outCount)
        return ptr;

    ptr = (*source->handler)(source, inp, outCount, sampleOffset, p);

    aSetBuffer(ptr++, 0, *inp, 0x440 + *outp, outCount << 1);
    aSetBuffer(ptr++, 8, 0x580 + *outp, 0x6C0 + *outp, 0x800 + *outp);

    if (e->first) {
        e->first = 0;

        e->ltgt = (eqpower[e->pan] * e->volume) >> 15;
        e->lratm = func_80041CFC((f64) e->cvolL, (f64) e->ltgt, e->segEnd, &(e->lratl));
        e->rtgt = (eqpower[EQPOWER_LENGTH - e->pan - 1] * e->volume) >> 15;
        e->rratm = func_80041CFC((f64) e->cvolR, (f64) e->rtgt, e->segEnd, &(e->rratl));

        aSetVolume(ptr++, 0x06, e->cvolL, 0, 0);
        aSetVolume(ptr++, 0x04, e->cvolR, 0, 0);
        aSetVolume(ptr++, 0x02, e->ltgt, e->lratm, e->lratl);
        aSetVolume(ptr++, 0x00, e->rtgt, e->rratm, e->rratl);
        aSetVolume(ptr++, 0x08, e->dryamt, 0, e->wetamt);
        aEnvMixer(ptr++, 0x09, func_80043338(e->state));
    } else
        aEnvMixer(ptr++, 0x08, func_80043338(e->state));

    *inp += (outCount << 1);
    e->delta += outCount;

    return ptr;
}

f64 func_80041B30(f64 value, s32 *eptr) {
    f64 absvalue;

    *eptr = 0;
    if (value == 0.0)
        return (value);
    absvalue = (value > 0.0) ? value : -value;
    for (; absvalue >= 1.0; absvalue *= 0.5)
        ++*eptr;
    for (; absvalue < 0.5; absvalue += absvalue)
        --*eptr;
    return (value > 0.0 ? absvalue : -absvalue);
}

f64 func_80041B08(f64 in, s32 ex) {
    s32 exp;

    if (ex) {
        exp = 1 << ex;
        in *= (f64) exp;
    }

    return (in);
}

static s16 func_80041CFC(f64 vol, f64 tgt, s32 count, u16 *ratel) {
    s16 s;
    f64 invn = 1.0 / count, eps, a, fs, mant;
    s32 i_invn, ex, indx;

    if (count == 0) {
        if (tgt >= vol) {
            *ratel = 0xffff;
            return 0x7fff;
        } else {
            *ratel = 0;
            return 0;
        }
    }

    if (tgt < 1.0)
        tgt = 1.0;
    if (vol <= 0) vol = 1;

    {
        f64 logtab[] = { -0.912537, -0.752072, -0.607683, -0.476438,
                         -0.356144, -0.245112, -0.142019, -0.045804 };

        i_invn = (s32) func_80041B08(invn, 30);
        mant = func_80041B30(tgt / vol, &ex);
        indx = (s32) (func_80041B08(mant, 3 + 1));
        eps = (logtab[indx - 8] + ex) * 0.69314718055994530942;
        eps /= func_80041B08(1, 30);
        fs = (1.0 + eps);
        a = 1.0;
        while (i_invn) {
            if (i_invn & 1)
                a = a * fs;
            fs *= fs;
            i_invn >>= 1;
        }
    }

    a *= (a *= (a *= a));
    s = (s16) a;
    *ratel = (s16) (0xffff * (a - (f32) s));
    return (s16) a;
}

static f32 func_80042164(f32 ivol, s32 samples, s16 ratem, u16 ratel) {
    f32 r, a;
    s32 i;

    samples >>= 3;
    if (samples == 0) {
        return ivol;
    }
    r = ((f32) (ratem << 16) + (f32) ratel) / 65536;

    a = 1.0;
    for (i = 0; i < 32; i++) {
        if (samples & 1)
            a *= r;
        samples >>= 1;
        if (samples == 0)
            break;
        r *= r;
    }
    ivol *= a;
    return ivol;
}
