typedef signed short s16;
typedef signed int s32;
typedef struct { char pad[0x28]; s32 state; char pad2[4]; } ALSoundState;
typedef struct { s16 type; s16 pad; ALSoundState *state; s32 a; s32 b; } ALSndpEvent;
typedef struct { char pad[0x14]; char evtq[0x28]; s32 target; ALSoundState *sndState; } ALSndPlayer;
void alEvtqPostEvent(void *q, void *e, s32 d);
void func_8004C6A8(ALSndPlayer *sndp)
{
    ALSndpEvent evt;
    ALSoundState *sState = sndp->sndState;
    if ((sState + sndp->target)->state == 0) {
        evt.type = 0;
        evt.state = &sState[sndp->target];
        alEvtqPostEvent(&sndp->evtq, &evt, 0);
    }
}
