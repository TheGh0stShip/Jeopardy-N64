typedef unsigned char u8; typedef short s16; typedef int s32;

typedef struct {
    u8 pad[0x30];
} ALSoundState;

typedef struct {
    u8 pad0[0x14];
    u8 evtq[0x28];
    s32 target;
    ALSoundState *sndState;
} ALSndPlayerX;

typedef struct {
    s16 type;
    ALSoundState *state;
    u8 mix;
} ALSndpFxEvt;

typedef union {
    ALSndpFxEvt fx;
    s32 pad[4];
} ALSndpEvtX;

extern void alEvtqPostEvent(void *q, void *evt, s32 delta);

void func_8003CD68(ALSndPlayerX *sndp, u8 mix)
{
    ALSndpEvtX evt;
    ALSoundState *sState = sndp->sndState;

    evt.fx.type = 8;
    evt.fx.state = sState + sndp->target;
    evt.fx.mix = mix;
    alEvtqPostEvent(&sndp->evtq, &evt, 0);
}
