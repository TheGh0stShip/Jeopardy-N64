typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct ALFilter_s {
    /* 0x00 */ struct ALFilter_s *source;
    /* 0x04 */ void *handler;
    /* 0x08 */ void *setParam;
    /* 0x0C */ s16 inp;
    /* 0x0E */ s16 outp;
    /* 0x10 */ s32 type;
} ALFilter;

typedef struct {
    /* 0x00 */ s16 fc;
    /* 0x02 */ u8 unk_2[0x26];
    /* 0x28 */ void *fstate;
    /* 0x2C */ s32 first;
} ALLowPass;

typedef struct {
    /* 0x00 */ ALFilter filter;
    /* 0x14 */ void *state;
    /* 0x18 */ f32 ratio;
    /* 0x1C */ s32 upitch;
    /* 0x20 */ f32 delta;
    /* 0x24 */ s32 first;
    /* 0x28 */ u8 unk_28[0xC];
} ALResampler;

typedef struct {
    /* 0x00 */ u32 input;
    /* 0x04 */ u32 output;
    /* 0x08 */ s16 ffcoef;
    /* 0x0A */ s16 fbcoef;
    /* 0x0C */ s16 gain;
    /* 0x10 */ f32 rsinc;
    /* 0x14 */ f32 rsval;
    /* 0x18 */ s32 rsdelta;
    /* 0x1C */ f32 rsgain;
    /* 0x20 */ ALLowPass *lp;
    /* 0x24 */ ALResampler *rs;
} ALDelay;

typedef struct {
    /* 0x00 */ ALFilter filter;
    /* 0x14 */ s16 *base;
    /* 0x18 */ s16 *input;
    /* 0x1C */ u32 length;
    /* 0x20 */ ALDelay *delay;
    /* 0x24 */ u8 section_count;
    /* 0x28 */ void *paramHdl;
} ALFx;

typedef struct {
    /* 0x00 */ u8 unk_0[0x18];
    /* 0x18 */ s32 outputRate;
    /* 0x1C */ u8 fxType;
    /* 0x20 */ s32 *params;
} ALSynConfig;

extern s32 D_80072008[];
extern s32 D_80072070[];
extern s32 D_800720F8[];
extern s32 D_80072120[];
extern s32 D_80072148[];
extern s32 D_80072170[];

void func_80042AA8(ALFilter *f, void *h, void *setParam, s32 type);
void *func_8003D5A8(u8 *file, s32 line, void *hp, s32 num, s32 size);
void func_8003F5C8(ALLowPass *lp);
s32 func_80043CAC();
s32 alFxPull();
s32 alFxParamHdl();

void func_8003F668(ALFx *r, ALSynConfig *c, void *hp)
{
    u16 i, j, k;
    s32 *param = 0;
    ALFilter *f = (ALFilter *) r;
    ALDelay *d;

    func_80042AA8(f, 0, func_80043CAC, 5);
    f->handler = alFxPull;
    r->paramHdl = alFxParamHdl;

    switch (c->fxType) {
        case 1: param = D_80072008; break;
        case 2: param = D_80072070; break;
        case 5: param = D_800720F8; break;
        case 3: param = D_80072120; break;
        case 4: param = D_80072148; break;
        case 6: param = c->params; break;
        default: param = D_80072170; break;
    }

    j = 0;

    r->section_count = param[j++];
    r->length = param[j++];

    r->delay = func_8003D5A8(0, 0, hp, r->section_count, sizeof(ALDelay));
    r->base = func_8003D5A8(0, 0, hp, r->length, sizeof(s16));
    r->input = r->base;

    for (k = 0; k < r->length; k++)
        r->base[k] = 0;

    for (i = 0; i < r->section_count; i++) {
        d = &r->delay[i];
        d->input = param[j++];
        d->output = param[j++];
        d->fbcoef = param[j++];
        d->ffcoef = param[j++];
        d->gain = param[j++];

        if (param[j]) {
            d->rsinc = ((((f32)param[j++]) / 1000) * 2.0) / c->outputRate;
            d->rsgain = (((f32)param[j++]) / 173123.404906676) * (d->output - d->input);
            d->rsval = 1.0;
            d->rsdelta = 0.0;
            d->rs = func_8003D5A8(0, 0, hp, 1, sizeof(ALResampler));
            d->rs->state = func_8003D5A8(0, 0, hp, 1, 0x20);
            d->rs->delta = 0.0;
            d->rs->first = 1;
        } else {
            d->rs = 0;
            j++; j++;
        }

        if (param[j]) {
            d->lp = func_8003D5A8(0, 0, hp, 1, sizeof(ALLowPass));
            d->lp->fstate = func_8003D5A8(0, 0, hp, 1, 8);
            d->lp->fc = param[j++];
            func_8003F5C8(d->lp);
        } else {
            d->lp = 0;
            j++;
        }
    }
}
