typedef signed short s16;
typedef signed int s32;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    s32 (*handler)(void *, s16 *, s32, s32, s16 *);
    s32 (*setParam)(void *, s32, void *);
} ALFilter;

typedef struct PVoice_s {
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

typedef struct ALParam_s {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
} ALParam;

typedef struct {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    PVoice *pvoice;
} ALFreeParam;

ALParam *__allocParam(void);
void _freePVoice(ALSynth *drvr, PVoice *pvoice);

void func_80047748(ALSynth *drvr, ALVoice *voice)
{
    ALFilter *f;
    ALFreeParam *update;

    if (voice->pvoice) {
        if (voice->pvoice->offset) {
            update = (ALFreeParam *)__allocParam();
            if (!update) {
                return;
            }
            update->delta = drvr->paramSamples + voice->pvoice->offset;
            update->type = 0;
            update->pvoice = voice->pvoice;
            f = voice->pvoice->channelKnob;
            (*f->setParam)(f, 3, update);
        } else {
            _freePVoice(drvr, voice->pvoice);
        }
        voice->pvoice = 0;
    }
}
