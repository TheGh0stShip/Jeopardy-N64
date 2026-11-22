typedef signed short s16; typedef int s32;
typedef struct { char pad[0x30]; } ALSoundState;
typedef struct { s16 type; ALSoundState *state; s16 vol; s16 pad; s32 pad2; } ALSndpVolEvent;
typedef struct {
    char pad0[0x14];
    char evtq[0x3C - 0x14];
    s32 target;
    ALSoundState *sndState;
} ALSndPlayer;
extern void alEvtqPostEvent(void *q, void *evt, s32 delta);

void func_8003CCA8(ALSndPlayer *sndp, s16 vol)
{
    ALSndpVolEvent evt;
    ALSoundState *sState = sndp->sndState;

    evt.type = 3;
    evt.state = sState + sndp->target;
    evt.vol = vol;
    alEvtqPostEvent(&sndp->evtq, &evt, 0);
}
