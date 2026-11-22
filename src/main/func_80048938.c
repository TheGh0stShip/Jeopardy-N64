typedef signed short s16;
typedef signed int s32;
typedef s32 ALMicroTime;
typedef float f32;

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    union { f32 f; s32 i; } data;
    union { f32 f; s32 i; } moredata;
    union { f32 f; s32 i; } stuff;
    union { f32 f; s32 i; } misc;
} ALParam;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    s32 (*handler)(void *, s16 *, s32, s32, s32 *);
    s32 (*setParam)(void *, s32, void *);
} ALFilter;

typedef struct {
    char pad[0xC];
    ALFilter *channelKnob;
    char pad2[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    char pad[8];
    PVoice *pvoice;
} ALVoice;

typedef struct {
    char pad[0x1C];
    s32 paramSamples;
} ALSynth;

ALParam *__allocParam(void);
s32 _timeToSamples(ALSynth *synth, s32 micros);

void func_80048938(ALSynth *synth, ALVoice *v, s16 volume, ALMicroTime t)
{
    ALParam *update;
    ALFilter *f;

    if (v->pvoice) {
        update = __allocParam();
        if (update == 0)
            return;
        update->delta = synth->paramSamples + v->pvoice->offset;
        update->type = 0xB;
        update->data.i = volume;
        update->moredata.i = _timeToSamples(synth, t);
        update->next = 0;
        f = v->pvoice->channelKnob;
        (*f->setParam)(f, 3, update);
    }
}
