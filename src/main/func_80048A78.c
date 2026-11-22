typedef signed short s16; typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32; typedef float f32;

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
typedef s32 (*ALSetParam)(void *, s32, void *);
struct ALFilter_s {
    ALFilter *source;
    void *handler;
    ALSetParam setParam;
};

typedef struct {
    u8 pad0[0xC];
    ALFilter *envMixer;
    u8 padC[0xD8 - 0x10];
    s32 offset;
} PVoice;

typedef struct {
    u8 pad0[8];
    PVoice *pvoice;
} ALVoice;

typedef struct {
    u8 pad0[0x1C];
    s32 paramSamples;
} ALSynth;

ALParam *__allocParam(void);

void func_80048A78(ALSynth *synth, ALVoice *v, u8 fxmix)
{
    ALParam *update;
    ALFilter *f;

    if (v->pvoice) {
        update = __allocParam();
        if (update) {
            update->delta = synth->paramSamples + v->pvoice->offset;
            update->type = 12;
            update->data.i = fxmix;
            update->next = 0;
            f = v->pvoice->envMixer;
            (*f->setParam)(f, 3, update);
        }
    }
}
