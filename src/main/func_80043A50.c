typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct {
    /* 0x00 */ s16 fc;
} ALLowPass;

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
    /* 0x24 */ void *resampler;
} ALDelay;

typedef struct {
    /* 0x00 */ u8 unk_0[0x20];
    /* 0x20 */ ALDelay *delay;
} ALFx;

typedef struct {
    /* 0x00 */ u8 unk_0[0x44];
    /* 0x44 */ s32 outputRate;
} ALGlobals;

extern ALGlobals *D_80071FF8;
void func_8003F5C8(ALLowPass *lp);

s32 func_80043A50(void *filter, s32 paramID, void *param)
{
    ALFx *f = (ALFx *)filter;
    s32 p = (paramID - 2) % 8;
    s32 s = (paramID - 2) / 8;
    s32 val = *(s32 *)param;

    switch (p) {
        case 0:
            f->delay[s].input = (u32)val & 0xFFFFFFF8;
            break;
        case 1:
            f->delay[s].output = (u32)val & 0xFFFFFFF8;
            break;
        case 3:
            f->delay[s].ffcoef = (s16)val;
            break;
        case 2:
            f->delay[s].fbcoef = (s16)val;
            break;
        case 4:
            f->delay[s].gain = (s16)val;
            break;
        case 5:
            f->delay[s].rsinc = ((((f32)val) / 1000) * 2.0) / D_80071FF8->outputRate;
            break;
        case 6:
            f->delay[s].rsgain = (((f32)val) / 173123.404906676) * (f->delay[s].output - f->delay[s].input);
            break;
        case 7:
            if (f->delay[s].lp) {
                f->delay[s].lp->fc = (s16)val;
                func_8003F5C8(f->delay[s].lp);
            }
            break;
    }
    return 0;
}
