typedef signed short s16; typedef unsigned char u8; typedef signed int s32;

typedef struct {
    s16 type;
    void *state;
    union { u8 b; s32 pad[2]; } data;
} SndEvent;

typedef struct {
    char pad0[0x14];
    char evtq[0x28];
    s32 target;
    char *sndState;
} SndPlayer;

void alEvtqPostEvent(void *q, void *evt, s32 delta);

void func_8003CD08(SndPlayer *sndp, u8 pan)
{
    SndEvent evt;
    char *sState = sndp->sndState;

    evt.type = 2;
    evt.data.b = pan;
    evt.state = sState + sndp->target * 0x30;
    alEvtqPostEvent(&sndp->evtq, &evt, 0);
}
