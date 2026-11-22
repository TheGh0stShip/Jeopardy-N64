typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

typedef struct {
    /* 0x00 */ u8 *base;
    /* 0x04 */ u8 *trackStart;
    /* 0x08 */ u8 *curPtr;
    /* 0x0C */ s32 lastTicks;
    /* 0x10 */ s32 len;
    /* 0x14 */ f32 qnpt;
    /* 0x18 */ s16 division;
    /* 0x1A */ s16 lastStatus;
} ALSeq;

typedef struct {
    /* 0x00 */ u8 *curPtr;
    /* 0x04 */ s32 lastTicks;
    /* 0x08 */ s32 curTicks;
    /* 0x0C */ s16 lastStatus;
} ALSeqMarker;

typedef struct {
    /* 0x00 */ s16 type;
    /* 0x04 */ s32 ticks;
    /* 0x08 */ u8 status;
    /* 0x09 */ u8 byte1;
    /* 0x0A */ u8 byte2;
    /* 0x0B */ u8 byte3;
    /* 0x0C */ u8 byte4;
    /* 0x0D */ u8 byte5;
} ALEvent;

extern f64 D_80002378;
extern f64 D_80002380;

static u32 func_80047170(ALSeq *seq);
static s32 func_800475F0(ALSeq *seq);
static s16 func_80047640(ALSeq *seq);
void func_800471BC(ALSeq *seq, ALEvent *event);
static u8 func_80047168(ALSeq *seq) { return *seq->curPtr++; }

static u32 func_80047170(ALSeq *seq) {
    u32 value;
    u32 c;

    c = *seq->curPtr++;
    value = c;
    if (c & 0x80) {
        value = c & 0x7f;
        do {
            c = *seq->curPtr++;
            value = (value << 7) + (c & 0x7f);
        } while (c & 0x80);
    }
    return value;
}

static s32 func_800475F0(ALSeq *seq) {
    s32 tmp;

    tmp = *seq->curPtr++ << 24;
    tmp |= *seq->curPtr++ << 16;
    tmp |= *seq->curPtr++ << 8;
    tmp |= *seq->curPtr++;
    return tmp;
}

static s16 func_80047640(ALSeq *seq) {
    s16 tmp;

    tmp = *seq->curPtr++ << 8;
    tmp |= *seq->curPtr++;
    return tmp;
}

void func_80047670(ALSeq *seq, u8 *ptr, s32 len) {
    seq->base = ptr;
    seq->len = len;
    seq->lastStatus = 0;
    seq->lastTicks = 0;
    seq->curPtr = ptr;

    if (func_800475F0(seq) != 0x4D546864) {
        return;
    }
    func_800475F0(seq);
    if (func_80047640(seq) != 0) {
        return;
    }
    if (func_80047640(seq) != 1) {
        return;
    }
    seq->division = func_80047640(seq);
    if (seq->division & 0x8000) {
        return;
    }
    seq->qnpt = 1.0 / (f32)seq->division;
    if (func_800475F0(seq) != 0x4D54726B) {
        return;
    }
    func_800475F0(seq);
    seq->trackStart = seq->curPtr;
}

void func_800471BC(ALSeq *seq, ALEvent *event) {
    u8 status; u8 type; s32 delta;

    delta = func_80047170(seq);
    seq->lastTicks += delta;
    status = func_80047168(seq);
    if (status == 0xFF) {
        type = func_80047168(seq);
        if (type == 0x51) {
            event->type = 3;
            event->ticks = delta;
            event->status = status;
            event->byte1 = type;
            event->byte2 = func_80047168(seq);
            event->byte3 = func_80047168(seq);
            event->byte4 = func_80047168(seq);
            event->byte5 = func_80047168(seq);
        } else if (type == 0x2F) {
            event->type = 4;
            event->ticks = delta;
            event->status = status;
            event->byte1 = type;
            event->byte2 = func_80047168(seq);
        }
        seq->lastStatus = 0;
    } else {
        event->type = 1;
        event->ticks = delta;
        if (status & 0x80) {
            event->status = status;
            event->byte1 = func_80047168(seq);
            seq->lastStatus = status;
        } else {
            event->status = seq->lastStatus;
            event->byte1 = status;
        }
        if (((event->status & 0xf0) != 0xC0) && ((event->status & 0xf0) != 0xD0)) {
            event->byte2 = func_80047168(seq);
        } else {
            event->byte2 = 0;
        }
    }
}

char func_80047598(ALSeq *seq, s32 *pDeltaTicks) {
    u8 *saveCurPtr;

    if (seq->curPtr >= seq->base + seq->len) {
        return 0;
    }
    saveCurPtr = seq->curPtr;
    *pDeltaTicks = func_80047170(seq);
    seq->curPtr = saveCurPtr;
    return 1;
}

f32 func_80047544(ALSeq *seq, s32 ticks, u32 tempo) {
    return ((f32)ticks * (f32)tempo) / ((f32)seq->division * D_80002380);
}

u32 func_80047460(ALSeq *seq, f32 sec, u32 tempo) {
    return sec * D_80002378 * seq->division / tempo;
}

void func_80047340(ALSeq *seq, ALSeqMarker *m, u32 ticks) {
    ALEvent evt;
    u8 *savedPtr, *lastPtr;
    s32 savedTicks, lastTicks;
    s16 savedStatus, lastStatus;

    if (ticks == 0) {
        m->curPtr = seq->trackStart;
        m->lastStatus = 0;
        m->lastTicks = 0;
        m->curTicks = 0;
        return;
    }

    savedPtr = seq->curPtr;
    savedStatus = seq->lastStatus;
    savedTicks = seq->lastTicks;

    seq->curPtr = seq->trackStart;
    seq->lastStatus = 0;
    seq->lastTicks = 0;

    do {
        lastPtr = seq->curPtr;
        lastStatus = seq->lastStatus;
        lastTicks = seq->lastTicks;

        func_800471BC(seq, &evt);

        if (evt.type == 4) {
            lastPtr = seq->curPtr;
            lastStatus = seq->lastStatus;
            lastTicks = seq->lastTicks;
            break;
        }
    } while (seq->lastTicks < ticks);

    m->curPtr = lastPtr;
    m->lastStatus = lastStatus;
    m->lastTicks = lastTicks;
    m->curTicks = seq->lastTicks;

    seq->curPtr = savedPtr;
    seq->lastStatus = savedStatus;
    seq->lastTicks = savedTicks;
}

s32 func_80047160(ALSeq *seq) {
    return seq->lastTicks;
}

void func_80047144(ALSeq *seq, ALSeqMarker *m) {
    seq->curPtr = m->curPtr;
    seq->lastStatus = m->lastStatus;
    seq->lastTicks = m->lastTicks;
}

void func_80047128(ALSeq *seq, ALSeqMarker *m) {
    m->curPtr = seq->curPtr;
    m->lastStatus = seq->lastStatus;
    m->lastTicks = seq->lastTicks;
}
