typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;
typedef float f32; typedef double f64;

typedef s32 ALMicroTime;
typedef u8 ALPan;
typedef u32 OSIntMask;

typedef struct ALLink_s {
    struct ALLink_s *next;
    struct ALLink_s *prev;
} ALLink;

typedef struct {
    s16 type;
    u8 msg[12];
} ALEvent;

typedef struct {
    ALLink node;
    ALMicroTime delta;
    ALEvent evt;
} ALEventListItem;

typedef struct {
    ALLink freeList;
    ALLink allocList;
    s32 eventCount;
} ALEventQueue;

typedef ALMicroTime (*ALVoiceHandler)(void *);

typedef struct ALPlayer_s {
    struct ALPlayer_s *next;
    void *clientData;
    ALVoiceHandler handler;
    ALMicroTime callTime;
    s32 samplesLeft;
} ALPlayer;

typedef struct {
    ALLink node;
    void *pvoice;
    void *table;
    void *clientPrivate;
    s16 state;
    s16 priority;
    s16 fxBus;
    s16 unityPitch;
} ALVoice;

typedef struct {
    s16 priority;
    s16 fxBus;
    u8 unityPitch;
} ALVoiceConfig;

typedef struct {
    ALMicroTime attackTime;
    ALMicroTime decayTime;
    ALMicroTime releaseTime;
    u8 attackVolume;
    u8 decayVolume;
} ALEnvelope;

typedef struct {
    ALEnvelope *envelope;
    void *keyMap;
    void *wavetable;
    ALPan samplePan;
    u8 sampleVolume;
    u8 flags;
} ALSound;

typedef struct {
    ALVoice voice;
    ALSound *sound;
    s16 priority;
    f32 pitch;
    s32 state;
    s16 vol;
    ALPan pan;
    u8 fxMix;
} ALSoundState;

typedef union {
    struct {
        s16 type;
        ALSoundState *state;
    } common;
    struct {
        s16 type;
        ALSoundState *state;
        s16 vol;
    } vol;
    struct {
        s16 type;
        ALSoundState *state;
        f32 pitch;
    } pitch;
    struct {
        s16 type;
        ALSoundState *state;
        ALPan pan;
    } pan;
    struct {
        s16 type;
        ALSoundState *state;
        u8 mix;
    } fx;
    ALEvent msg;
} ALSndpEvent;

typedef struct {
    s32 maxSounds;
    s32 maxEvents;
    void *heap;
} ALSndpConfig;

typedef struct {
    ALPlayer node;
    ALEventQueue evtq;
    ALEvent nextEvent;
    void *drvr;
    s32 target;
    void *sndState;
    s32 maxSounds;
    ALMicroTime frameTime;
    ALMicroTime nextDelta;
    ALMicroTime curTime;
} ALSndPlayer;

#define AL_SNDP_PLAY_EVT 0
#define AL_SNDP_STOP_EVT 1
#define AL_SNDP_PAN_EVT 2
#define AL_SNDP_VOL_EVT 3
#define AL_SNDP_PITCH_EVT 4
#define AL_SNDP_API_EVT 5
#define AL_SNDP_DECAY_EVT 6
#define AL_SNDP_END_EVT 7
#define AL_SNDP_FX_EVT 8

#define AL_STOPPED 0
#define AL_PLAYING 1
#define AL_STOPPING 2
#define AL_VOL_FULL 127
#define AL_PAN_CENTER 64
#define AL_PAN_LEFT 0
#define AL_PAN_RIGHT 127
#define AL_USEC_PER_FRAME 16000
#define MIN_RATIO 0.0001
#define INT_MAX 2147483647
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#define MAX(a, b) (((a) > (b)) ? (a) : (b))

extern void *D_80071FF8;

void *alHeapDBAlloc(u8 *file, s32 line, void *hp, s32 num, s32 size);
void alLink(ALLink *element, ALLink *after);
void alUnlink(ALLink *element);
OSIntMask osSetIntMask(OSIntMask);
void alEvtqPostEvent(ALEventQueue *evtq, ALEvent *evt, ALMicroTime delta);
ALMicroTime alEvtqNextEvent(ALEventQueue *evtq, ALEvent *evt);
void alEvtqNew(ALEventQueue *evtq, ALEventListItem *items, s32 itemCount);
void alSynAddPlayer(void *s, ALPlayer *client);
s32 alSynAllocVoice(void *s, ALVoice *v, ALVoiceConfig *vc);
void alSynStartVoice(void *s, ALVoice *v, void *w);
void alSynSetPan(void *s, ALVoice *v, ALPan pan);
void alSynSetVol(void *s, ALVoice *v, s16 vol, ALMicroTime delta);
void alSynSetPitch(void *s, ALVoice *v, f32 ratio);
void alSynSetFXMix(void *s, ALVoice *v, u8 fxmix);
void alSynStopVoice(void *s, ALVoice *v);
void alSynFreeVoice(void *s, ALVoice *v);

ALMicroTime func_8004CC54(void *node);
static void func_8004CC4C(ALSndPlayer *sndp, ALSndpEvent *event);
static void func_8004CBC8(ALEventQueue *evtq, ALSoundState *state);
static s32 func_8004CC44(s32 i, f32 f);

void func_8004D19C(ALSndPlayer *sndp, ALSndpConfig *c) {
    u8 *ptr;
    ALEvent evt;
    ALSoundState *sounds;
    u32 i;

    sndp->maxSounds = c->maxSounds;
    sndp->target = -1;
    sndp->frameTime = AL_USEC_PER_FRAME;
    sounds = alHeapDBAlloc(0, 0, c->heap, 1, c->maxSounds * sizeof(ALSoundState));
    sndp->sndState = sounds;

    for (i = 0; i < c->maxSounds; i++) {
        sounds[i].sound = 0;
    }

    ptr = alHeapDBAlloc(0, 0, c->heap, 1, c->maxEvents * sizeof(ALEventListItem));
    alEvtqNew(&sndp->evtq, (ALEventListItem *)ptr, c->maxEvents);

    sndp->drvr = D_80071FF8;
    sndp->node.next = 0;
    sndp->node.handler = func_8004CC54;
    sndp->node.clientData = sndp;
    alSynAddPlayer(sndp->drvr, &sndp->node);

    evt.type = AL_SNDP_API_EVT;
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, sndp->frameTime);
    sndp->nextDelta = alEvtqNextEvent(&sndp->evtq, &sndp->nextEvent);
}

ALMicroTime func_8004CC54(void *node) {
    ALSndPlayer *sndp = (ALSndPlayer *)node;
    ALSndpEvent evt;
    s32 unused;

    do {
        switch (sndp->nextEvent.type) {
            case AL_SNDP_API_EVT:
                evt.common.type = AL_SNDP_API_EVT;
                alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, sndp->frameTime);
                break;

            default:
                func_8004CC4C(sndp, (ALSndpEvent *)&sndp->nextEvent);
                break;
        }
        sndp->nextDelta = alEvtqNextEvent(&sndp->evtq, &sndp->nextEvent);
    } while (sndp->nextDelta == 0);
    sndp->curTime += sndp->nextDelta;
    return sndp->nextDelta;
}

static void func_8004CC4C(ALSndPlayer *sndp, ALSndpEvent *event) {
    ALVoiceConfig vc;
    ALSound *snd;
    ALVoice *voice;
    ALPan pan;
    f32 pitch;
    ALSndpEvent evt;
    ALMicroTime delta;
    s16 vol, tmp;
    s32 vtmp;
    ALSoundState *state;

    state = event->common.state;
    snd = state->sound;

    switch (event->common.type) {
        case AL_SNDP_PLAY_EVT:
            if (state->state != AL_STOPPED || !snd) {
                return;
            }
            vc.fxBus = 0;
            vc.priority = state->priority;
            vc.unityPitch = 0;

            voice = &state->voice;
            alSynAllocVoice(sndp->drvr, voice, &vc);

            vol = (s16)((s32)snd->envelope->attackVolume * state->vol / AL_VOL_FULL);
            tmp = state->pan - AL_PAN_CENTER + snd->samplePan;
            tmp = MAX(tmp, AL_PAN_LEFT);
            pan = (ALPan)MIN(tmp, AL_PAN_RIGHT);
            pitch = state->pitch;
            delta = snd->envelope->attackTime;

            alSynStartVoice(sndp->drvr, voice, snd->wavetable);
            state->state = AL_PLAYING;

            alSynSetPan(sndp->drvr, voice, pan);
            alSynSetVol(sndp->drvr, voice, vol, delta);
            alSynSetPitch(sndp->drvr, voice, pitch);
            alSynSetFXMix(sndp->drvr, voice, state->fxMix);

            evt.common.type = AL_SNDP_DECAY_EVT;
            evt.common.state = state;
            delta = (ALMicroTime)func_8004CC44(snd->envelope->attackTime, state->pitch);
            alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, delta);
            break;

        case AL_SNDP_STOP_EVT:
            if (state->state != AL_PLAYING || !snd) {
                return;
            }
            delta = (ALMicroTime)func_8004CC44(snd->envelope->releaseTime, state->pitch);
            alSynSetVol(sndp->drvr, &state->voice, 0, delta);

            if (delta) {
                evt.common.type = AL_SNDP_END_EVT;
                evt.common.state = state;
                alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, delta);
                state->state = AL_STOPPING;
            } else {
                alSynStopVoice(sndp->drvr, &state->voice);
                alSynFreeVoice(sndp->drvr, &state->voice);
                func_8004CBC8(&sndp->evtq, state);
                state->state = AL_STOPPED;
            }
            break;

        case AL_SNDP_PAN_EVT:
            state->pan = event->pan.pan;
            if (state->state == AL_PLAYING && snd) {
                tmp = state->pan - AL_PAN_CENTER + snd->samplePan;
                tmp = MAX(tmp, AL_PAN_LEFT);
                pan = (ALPan)MIN(tmp, AL_PAN_RIGHT);
                alSynSetPan(sndp->drvr, &state->voice, pan);
            }
            break;

        case AL_SNDP_PITCH_EVT:
            if ((state->pitch = event->pitch.pitch) < MIN_RATIO) {
                state->pitch = MIN_RATIO;
            }
            if (state->state == AL_PLAYING) {
                alSynSetPitch(sndp->drvr, &state->voice, state->pitch);
            }
            break;

        case AL_SNDP_FX_EVT:
            state->fxMix = event->fx.mix;
            if (state->state == AL_PLAYING) {
                alSynSetFXMix(sndp->drvr, &state->voice, state->fxMix);
            }
            break;

        case AL_SNDP_VOL_EVT:
            state->vol = event->vol.vol;
            if (state->state == AL_PLAYING && snd) {
                vtmp = snd->envelope->decayVolume * state->vol / AL_VOL_FULL;
                alSynSetVol(sndp->drvr, &state->voice, (s16)vtmp, 1000);
            }
            break;

        case AL_SNDP_DECAY_EVT:
            if ((s32)snd->envelope->decayTime != -1) {
                vtmp = snd->envelope->decayVolume * state->vol / AL_VOL_FULL;
                delta = (ALMicroTime)func_8004CC44(snd->envelope->decayTime, state->pitch);
                alSynSetVol(sndp->drvr, &state->voice, (s16)vtmp, delta);
                evt.common.type = AL_SNDP_STOP_EVT;
                evt.common.state = state;
                alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, delta);
            }
            break;

        case AL_SNDP_END_EVT:
            alSynStopVoice(sndp->drvr, &state->voice);
            alSynFreeVoice(sndp->drvr, &state->voice);
            func_8004CBC8(&sndp->evtq, state);
            state->state = AL_STOPPED;
            break;

        default:
            break;
    }
}

static s32 func_8004CC44(s32 i, f32 f) {
    f64 rd;
    int ri;

    rd = i / f;
    if (rd > INT_MAX) {
        ri = INT_MAX;
    } else {
        ri = rd;
    }
    return ri;
}

static void func_8004CBC8(ALEventQueue *evtq, ALSoundState *state) {
    ALLink *thisNode;
    ALLink *nextNode;
    ALEventListItem *thisItem;
    ALEventListItem *nextItem;
    ALSndpEvent *thisEvent;
    OSIntMask mask;

    mask = osSetIntMask(1);
    thisNode = evtq->allocList.next;
    while (thisNode != 0) {
        nextNode = thisNode->next;
        thisItem = (ALEventListItem *)thisNode;
        nextItem = (ALEventListItem *)nextNode;
        thisEvent = (ALSndpEvent *)&thisItem->evt;
        if (thisEvent->common.state == state) {
            if (nextItem) {
                nextItem->delta += thisItem->delta;
            }
            alUnlink(thisNode);
            alLink(thisNode, &evtq->freeList);
        }
        thisNode = nextNode;
    }
    osSetIntMask(mask);
}
