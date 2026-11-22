typedef signed short s16;
typedef signed int s32;

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
} ALParam;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    void *handler;
    s32 (*setParam)(void *, s32, void *);
} ALFilter;

typedef struct {
    char pad0[0xC];
    ALFilter *channelKnob;
    char pad10[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    char pad0[8];
    PVoice *pvoice;
} ALVoice;

typedef struct {
    char pad0[0x1C];
    s32 paramSamples;
} ALSynth;

extern ALParam *__allocParam(void);

void func_80047A28(ALSynth *drvr, ALVoice *voice)
{
    ALParam *update;
    ALFilter *f;

    if (voice->pvoice) {
        update = __allocParam();
        if (update) {
            update->delta = drvr->paramSamples + voice->pvoice->offset;
            update->type = 15;
            update->next = 0;
            f = voice->pvoice->channelKnob;
            (*f->setParam)(f, 3, update);
        }
    }
}
