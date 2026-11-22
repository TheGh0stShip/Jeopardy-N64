typedef signed short s16;
typedef signed int s32;

typedef struct ALParam_s ALParam;
typedef struct ALFilter_s ALFilter;
typedef s32 (*ALSetParam)(void *, s32, void *);

struct ALFilter_s {
    ALFilter *source;
    void *handler;
    ALSetParam setParam;
};

typedef struct {
    ALParam *next;
    s32 delta;
    s16 type;
    s16 unity;
    void *wave;
} ALStartParam;

typedef struct {
    char pad[0xC];
    ALFilter *channelKnob;
    char pad2[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    void *next;
    void *prev;
    PVoice *pvoice;
    void *table;
    void *clientPrivate;
    s16 state;
    s16 priority;
    s16 fxBus;
    s16 unityPitch;
} ALVoice;

typedef struct {
    char pad[0x1C];
    s32 paramSamples;
} ALSynth;

ALParam *__allocParam(void);

void func_8004D2D8(ALSynth *synth, ALVoice *voice, void *table)
{
    ALStartParam *update;
    ALFilter *f;

    if (voice->pvoice) {
        update = (ALStartParam *)__allocParam();
        if (update == 0) return;
        update->delta = synth->paramSamples + voice->pvoice->offset;
        update->type = 14;
        update->wave = table;
        update->next = 0;
        update->unity = voice->unityPitch;
        f = voice->pvoice->channelKnob;
        (*f->setParam)(f, 3, update);
    }
}
