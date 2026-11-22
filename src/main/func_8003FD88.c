typedef struct { char pad[0x30]; } ALSoundState;
typedef struct { short type; ALSoundState *state; char pad[0x8]; } ALSndpEvent;
typedef struct {
    char pad0[0x14];
    char evtq[0x28];
    int target;
    ALSoundState *sndState;
} ALSndPlayer;
void alEvtqPostEvent(void *q, void *e, int delta);

void func_8003FD88(ALSndPlayer *sndp)
{
    ALSndpEvent evt;
    ALSoundState *sState = sndp->sndState;

    evt.type = 1;
    evt.state = &sState[sndp->target];
    alEvtqPostEvent(&sndp->evtq, &evt, 0);
}
