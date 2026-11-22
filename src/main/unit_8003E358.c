typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct {
    u32 trackOffset[16];
    u32 division;
} ALCMidiHdr;

typedef struct {
    ALCMidiHdr *base;
    u32 validTracks;
    f32 qnpt;
    u32 lastTicks;
    u32 lastDeltaTicks;
    u32 deltaFlag;
    u8 *curLoc[16];
    u8 *curBUPtr[16];
    u8 curBULen[16];
    u8 lastStatus[16];
    u32 evtDeltaTicks[16];
} ALCSeq;

typedef struct {
    u32 validTracks;
    u32 lastTicks;
    u32 lastDeltaTicks;
    u8 *curLoc[16];
    u8 *curBUPtr[16];
    u8 curBULen[16];
    u8 lastStatus[16];
    u32 evtDeltaTicks[16];
} ALCSeqMarker;

typedef struct {
    s32 ticks;
    u8 status;
    u8 byte1;
    u8 byte2;
    s32 duration;
} ALMIDIEvent;

typedef struct {
    s32 ticks;
    u8 status;
    u8 type;
    u8 len;
    u8 byte1;
    u8 byte2;
    u8 byte3;
} ALTempoEvent;

typedef struct {
    s16 type;
    union {
        ALMIDIEvent midi;
        ALTempoEvent tempo;
        s32 pad[3];
    } msg;
} ALEvent;

#define AL_SEQ_MIDI_EVT 1
#define AL_TEMPO_EVT 3
#define AL_SEQ_END_EVT 4
#define AL_CSP_NOTEOFF_EVT 17
#define AL_TRACK_END 18
#define AL_CSP_LOOPSTART 19
#define AL_CSP_LOOPEND 20
#define AL_MIDI_Meta 0xFF
#define AL_MIDI_META_TEMPO 0x51
#define AL_MIDI_META_EOT 0x2F
#define AL_CMIDI_BLOCK_CODE 0xFE
#define AL_CMIDI_LOOPSTART_CODE 0x2E
#define AL_CMIDI_LOOPEND_CODE 0x2D
#define AL_MIDI_ProgramChange 0xC0
#define AL_MIDI_ChannelPressure 0xD0
#define AL_MIDI_NoteOn 0x90

static u32 func_8003E55C(ALCSeq *s, u32 track);
static u8 func_8003E498(ALCSeq *s, u32 track);
static u32 func_8003E5B4(ALCSeq *seq, u32 track, ALEvent *event);
void func_8003E8B4(ALCSeq *seq, u8 *ptr);
void func_8003E5BC(ALCSeq *seq, ALEvent *evt);

char func_8003ECA4(ALCSeq *seq, s32 *pDeltaTicks)
{
    u32 i;
    u32 firstTime = 0xFFFFFFFF;
    u32 lastTicks = seq->lastDeltaTicks;

    if (!seq->validTracks)
        return 0;

    for (i = 0; i < 16; i++) {
        if ((seq->validTracks >> i) & 1) {
            if (seq->deltaFlag)
                seq->evtDeltaTicks[i] -= lastTicks;

            if (seq->evtDeltaTicks[i] < firstTime)
                firstTime = seq->evtDeltaTicks[i];
        }
    }

    seq->deltaFlag = 0;
    *pDeltaTicks = firstTime;
    return 1;
}

f32 func_8003EC38(ALCSeq *seq, s32 ticks, u32 tempo)
{
    return ((f32)ticks * (f32)tempo) / ((f32)seq->base->division * 1000000.0);
}

u32 func_8003EB3C(ALCSeq *seq, f32 sec, u32 tempo)
{
    return (u32)(((f32)sec * 1000000.0 * seq->base->division) / tempo);
}

s32 func_8003EB34(ALCSeq *seq)
{
    return seq->lastTicks;
}

void func_8003E9C8(ALCSeq *seq, ALCSeqMarker *m, u32 ticks)
{
    ALEvent evt;
    ALCSeq tempSeq;
    s32 i;

    func_8003E8B4(&tempSeq, (u8 *)seq->base);

    do {
        m->validTracks = tempSeq.validTracks;
        m->lastTicks = tempSeq.lastTicks;
        m->lastDeltaTicks = tempSeq.lastDeltaTicks;

        for (i = 0; i < 16; i++) {
            m->curLoc[i] = tempSeq.curLoc[i];
            m->curBUPtr[i] = tempSeq.curBUPtr[i];
            m->curBULen[i] = tempSeq.curBULen[i];
            m->lastStatus[i] = tempSeq.lastStatus[i];
            m->evtDeltaTicks[i] = tempSeq.evtDeltaTicks[i];
        }

        func_8003E5BC(&tempSeq, &evt);

        if (evt.type == AL_SEQ_END_EVT)
            break;

    } while (tempSeq.lastTicks < ticks);
}

void func_8003E8B4(ALCSeq *seq, u8 *ptr)
{
    u32 i, tmpOff, flagTmp;

    seq->base = (ALCMidiHdr *)ptr;
    seq->validTracks = 0;
    seq->lastDeltaTicks = 0;
    seq->lastTicks = 0;
    seq->deltaFlag = 1;

    for (i = 0; i < 16; i++) {
        seq->lastStatus[i] = 0;
        seq->curBUPtr[i] = 0;
        seq->curBULen[i] = 0;
        tmpOff = seq->base->trackOffset[i];
        if (tmpOff) {
            flagTmp = 1 << i;
            seq->validTracks |= flagTmp;
            seq->curLoc[i] = (u8 *)((u32)ptr + tmpOff);
            seq->evtDeltaTicks[i] = func_8003E55C(seq, i);
        } else
            seq->curLoc[i] = 0;
    }

    seq->qnpt = 1.0 / (f32)seq->base->division;
}

void func_8003E5BC(ALCSeq *seq, ALEvent *evt)
{
    u32 i;
    u32 firstTime = 0xFFFFFFFF;
    u32 firstTrack;
    u32 lastTicks = seq->lastDeltaTicks;

    for (i = 0; i < 16; i++) {
        if ((seq->validTracks >> i) & 1) {
            if (seq->deltaFlag)
                seq->evtDeltaTicks[i] -= lastTicks;
            if (seq->evtDeltaTicks[i] < firstTime) {
                firstTime = seq->evtDeltaTicks[i];
                firstTrack = i;
            }
        }
    }

    func_8003E5B4(seq, firstTrack, evt);

    evt->msg.midi.ticks = firstTime;
    seq->lastTicks += firstTime;
    seq->lastDeltaTicks = firstTime;
    if (evt->type != AL_TRACK_END)
        seq->evtDeltaTicks[firstTrack] += func_8003E55C(seq, firstTrack);
    seq->deltaFlag = 1;
}

static u32 func_8003E5B4(ALCSeq *seq, u32 track, ALEvent *event)
{
    u32 offset;
    u8 status, loopCt, curLpCt, *tmpPtr;

    status = func_8003E498(seq, track);

    if (status == AL_MIDI_Meta) {
        u8 type = func_8003E498(seq, track);

        if (type == AL_MIDI_META_TEMPO) {
            event->type = AL_TEMPO_EVT;
            event->msg.tempo.status = status;
            event->msg.tempo.type = type;
            event->msg.tempo.byte1 = func_8003E498(seq, track);
            event->msg.tempo.byte2 = func_8003E498(seq, track);
            event->msg.tempo.byte3 = func_8003E498(seq, track);
            seq->lastStatus[track] = 0;
        } else if (type == AL_MIDI_META_EOT) {
            u32 flagMask;

            flagMask = 0x01 << track;
            seq->validTracks = seq->validTracks ^ flagMask;

            if (seq->validTracks)
                event->type = AL_TRACK_END;
            else
                event->type = AL_SEQ_END_EVT;
        } else if (type == AL_CMIDI_LOOPSTART_CODE) {
            status = func_8003E498(seq, track);
            status = func_8003E498(seq, track);
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPSTART;
        } else if (type == AL_CMIDI_LOOPEND_CODE) {
            tmpPtr = seq->curLoc[track];
            loopCt = *tmpPtr++;
            curLpCt = *tmpPtr;
            if (curLpCt == 0) {
                *tmpPtr = loopCt;
                seq->curLoc[track] = tmpPtr + 5;
            } else {
                if (curLpCt != 0xFF)
                    *tmpPtr = curLpCt - 1;
                tmpPtr++;
                offset = (*tmpPtr++) << 24;
                offset += (*tmpPtr++) << 16;
                offset += (*tmpPtr++) << 8;
                offset += *tmpPtr++;
                seq->curLoc[track] = tmpPtr - offset;
            }
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPEND;
        }
    } else {
        event->type = AL_SEQ_MIDI_EVT;
        if (status & 0x80) {
            event->msg.midi.status = status;
            event->msg.midi.byte1 = func_8003E498(seq, track);
            seq->lastStatus[track] = status;
        } else {
            event->msg.midi.status = seq->lastStatus[track];
            event->msg.midi.byte1 = status;
        }

        if (((event->msg.midi.status & 0xf0) != AL_MIDI_ProgramChange) &&
            ((event->msg.midi.status & 0xf0) != AL_MIDI_ChannelPressure)) {
            event->msg.midi.byte2 = func_8003E498(seq, track);
            if ((event->msg.midi.status & 0xf0) == AL_MIDI_NoteOn) {
                event->msg.midi.duration = func_8003E55C(seq, track);
            }
        } else
            event->msg.midi.byte2 = 0;
    }
    return 1;
}

static u32 func_8003E55C(ALCSeq *seq, u32 track)
{
    u32 value;
    u32 c;

    value = (u32)func_8003E498(seq, track);
    if (value & 0x00000080) {
        value &= 0x7f;
        do {
            c = (u32)func_8003E498(seq, track);
            value = (value << 7) + (c & 0x7f);
        } while (c & 0x80);
    }
    return (value);
}

static u8 func_8003E498(ALCSeq *seq, u32 track)
{
    u8 theByte;

    if (seq->curBULen[track]) {
        theByte = *seq->curBUPtr[track];
        seq->curBUPtr[track]++;
        seq->curBULen[track]--;
    } else {
        theByte = *seq->curLoc[track];
        seq->curLoc[track]++;
        if (theByte == AL_CMIDI_BLOCK_CODE) {
            u8 loBackUp, hiBackUp, theLen, nextByte;
            u32 backup;

            nextByte = *seq->curLoc[track];
            seq->curLoc[track]++;
            if (nextByte != AL_CMIDI_BLOCK_CODE) {
                hiBackUp = nextByte;
                loBackUp = *seq->curLoc[track];
                seq->curLoc[track]++;
                theLen = *seq->curLoc[track];
                seq->curLoc[track]++;
                backup = (u32)hiBackUp;
                backup = backup << 8;
                backup += loBackUp;
                seq->curBUPtr[track] = seq->curLoc[track] - (backup + 4);
                seq->curBULen[track] = (u32)theLen;

                theByte = *seq->curBUPtr[track];
                seq->curBUPtr[track]++;
                seq->curBULen[track]--;
            }
        }
    }
    return theByte;
}

void func_8003E3F8(ALCSeq *seq, ALCSeqMarker *m)
{
    s32 i;

    seq->validTracks = m->validTracks;
    seq->lastTicks = m->lastTicks;
    seq->lastDeltaTicks = m->lastDeltaTicks;

    for (i = 0; i < 16; i++) {
        seq->curLoc[i] = m->curLoc[i];
        seq->curBUPtr[i] = m->curBUPtr[i];
        seq->curBULen[i] = m->curBULen[i];
        seq->lastStatus[i] = m->lastStatus[i];
        seq->evtDeltaTicks[i] = m->evtDeltaTicks[i];
    }
}

void func_8003E358(ALCSeq *seq, ALCSeqMarker *m)
{
    s32 i;

    m->validTracks = seq->validTracks;
    m->lastTicks = seq->lastTicks;
    m->lastDeltaTicks = seq->lastDeltaTicks;

    for (i = 0; i < 16; i++) {
        m->curLoc[i] = seq->curLoc[i];
        m->curBUPtr[i] = seq->curBUPtr[i];
        m->curBULen[i] = seq->curBULen[i];
        m->lastStatus[i] = seq->lastStatus[i];
        m->evtDeltaTicks[i] = seq->evtDeltaTicks[i];
    }
}
