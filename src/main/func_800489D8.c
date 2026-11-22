typedef unsigned char u8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    union {
        f32 f;
        s32 i;
    } data;
} ALParam;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    s32 (*handler)();
    s32 (*setParam)(void *, s32, void *);
} ALFilter;

typedef struct {
    u8 pad[0xC];
    ALFilter *channelKnob;
    u8 pad2[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    u8 pad[8];
    PVoice *pvoice;
} ALVoice;

typedef struct {
    u8 pad[0x1C];
    s32 paramSamples;
} ALSynth;

ALParam *__allocParam(void);

void func_800489D8(ALSynth *synth, ALVoice *v, u8 fxmix)
{
    ALParam *update;
    ALFilter *f;

    if (v->pvoice) {
        update = __allocParam();
        if (update) {
            update->delta = synth->paramSamples + v->pvoice->offset;
            update->type = 0x10;
            if (fxmix < 0)
                update->data.i = -fxmix;
            else
                update->data.i = fxmix;
            update->next = 0;
            f = v->pvoice->channelKnob;
            (*f->setParam)(f, 3, update);
        }
    }
}
