typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32;
typedef s32 ALMicroTime;
typedef u8 ALPan;
typedef struct ALParam_s { struct ALParam_s *next; s32 delta; s16 type; } ALParam;
typedef struct {
    struct ALParam_s *next;
    s32 delta;
    s16 type;
    s16 unity;
    f32 pitch;
    s16 volume;
    ALPan pan;
    u8 fxMix;
    s32 samples;
    struct ALWaveTable_s *wave;
} ALStartParamAlt;
typedef s32 (*ALSetParam)(void *, s32, void *);
typedef struct ALFilter_s { struct ALFilter_s *source; void *handler; ALSetParam setParam; } ALFilter;
typedef struct { u8 pad[0xC]; ALFilter *channelKnob; u8 pad2[0xD8 - 0x10]; s32 offset; } PVoice;
typedef struct ALVoice_s { u8 pad[8]; PVoice *pvoice; u8 pad2[0x1A - 0xC]; s16 unityPitch; } ALVoice;
typedef struct { u8 pad[0x1C]; s32 paramSamples; } ALSynth;
typedef struct ALWaveTable_s ALWaveTable;
extern ALParam *__allocParam(void);
extern s32 _timeToSamples(ALSynth *, s32);

void func_80047AA8(ALSynth *s, ALVoice *v, ALWaveTable *w, f32 pitch, s16 vol, ALPan pan, u8 fxmix, ALMicroTime t)
{
    ALStartParamAlt *update;

    if (v->pvoice) {
        update = (ALStartParamAlt *)__allocParam();
        if (update == 0) return;

        if (fxmix < 0)
            fxmix = -fxmix;

        update->delta = s->paramSamples + v->pvoice->offset;
        update->next = 0;
        update->type = 0xD;
        update->unity = v->unityPitch;
        update->pan = pan;
        update->volume = vol;
        update->fxMix = fxmix;
        update->pitch = pitch;
        update->samples = _timeToSamples(s, t);
        update->wave = w;
        (*v->pvoice->channelKnob->setParam)(v->pvoice->channelKnob, 3, update);
    }
}
