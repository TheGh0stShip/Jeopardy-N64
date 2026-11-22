typedef float f32;
typedef signed short s16;
typedef signed int s32;

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    union {
        f32 f;
        s32 i;
    } data;
} ALParam;

typedef struct ALFilter_s ALFilter;
typedef s32 (*ALSetParam)(ALFilter *f, s32 paramID, void *param);
struct ALFilter_s {
    ALFilter *source;
    void *handler;
    ALSetParam setParam;
};

typedef struct {
    char pad0[0xC];
    ALFilter *channelKnob;
    char pad10[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    char pad0[0x8];
    PVoice *pvoice;
} ALVoice;

typedef struct {
    char pad0[0x1C];
    s32 paramSamples;
} ALSynth;

extern ALParam *__allocParam(void);

void func_800488A8(ALSynth *synth, ALVoice *v, f32 pitch)
{
    ALParam *update;
    ALFilter *f;

    if (v->pvoice) {
        update = __allocParam();
        if (update) {
            update->delta  = synth->paramSamples + v->pvoice->offset;
            update->type   = 7;
            update->data.f = pitch;
            update->next   = 0;

            f = v->pvoice->channelKnob;
            (*f->setParam)(f, 3, update);
        }
    }
}
