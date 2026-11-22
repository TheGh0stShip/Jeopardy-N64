typedef signed short s16; typedef float f32; typedef signed int s32;

typedef struct {
    char unk_00[0x30];
} ALSoundState;

typedef struct {
    s16 type;
    ALSoundState *state;
    union {
        f32 pitch;
        s32 unk;
    } u;
    s32 pad;
} ALSndpEvent;

typedef struct {
    char unk_00[0x14];
    char evtq[0x28];
    s32 target;
    ALSoundState *sndState;
} ALSndPlayer;

void alEvtqPostEvent(void *evtq, void *evt, s32 delta);

void func_8003CC48(ALSndPlayer *sndp, f32 pitch)
{
    ALSndpEvent evt;
    ALSoundState *sState = sndp->sndState;

    evt.type = 4;
    evt.state = sState + sndp->target;
    evt.u.pitch = pitch;
    alEvtqPostEvent(&sndp->evtq, &evt, 0);
}
