typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { s32 order; s32 npredictors; s16 book[1]; } ALADPCMBook;
typedef struct { u32 start; u32 end; u32 count; s16 state[16]; } ALADPCMloop;
typedef struct { u32 start; u32 end; u32 count; } ALRawLoop;
typedef struct { ALADPCMloop *loop; ALADPCMBook *book; } ALADPCMWaveInfo;
typedef struct { ALRawLoop *loop; } ALRAWWaveInfo;
typedef struct ALWaveTable_s {
    u8 *base; s32 len; u8 type; u8 flags;
    union { ALADPCMWaveInfo adpcmWave; ALRAWWaveInfo rawWave; } waveInfo;
} ALWaveTable;
typedef struct { s32 a; } ALEnvelope;
typedef struct { u8 a; } ALKeyMap;
typedef struct ALSound_s {
    ALEnvelope *envelope; ALKeyMap *keyMap; ALWaveTable *wavetable;
    u8 samplePan; u8 sampleVolume; u8 flags;
} ALSound;
typedef struct {
    u8 volume; u8 pan; u8 priority; u8 flags;
    u8 tremType; u8 tremRate; u8 tremDepth; u8 tremDelay;
    u8 vibType; u8 vibRate; u8 vibDepth; u8 vibDelay;
    s16 bendRange; s16 soundCount; ALSound *soundArray[1];
} ALInstrument;
typedef struct ALBank_s {
    s16 instCount; u8 flags; u8 pad; s32 sampleRate;
    ALInstrument *percussion; ALInstrument *instArray[1];
} ALBank;
typedef struct { s16 revision; s16 bankCount; ALBank *bankArray[1]; } ALBankFile;
typedef struct { u8 *offset; s32 len; } ALSeqData;
typedef struct { s16 revision; s16 seqCount; ALSeqData seqArray[1]; } ALSeqFile;

#define PATCH(SRC, BASE, TYPE) (TYPE)((u32)(SRC) + (u32)(BASE))

static void func_800419B4(ALBank *bank, s32 offset, s32 table);
static void func_800418C8(ALInstrument *inst, s32 offset, s32 table);
static void func_800418C0(ALSound *s, s32 offset, s32 table);
static void func_800418B8(ALWaveTable *w, s32 offset, s32 table);

void func_80041AC0(ALSeqFile *file, u8 *base) {
    s32 offset = (s32)base;
    s32 i;

    for (i = 0; i < file->seqCount; i++) {
        file->seqArray[i].offset = (u8 *)((u8 *)file->seqArray[i].offset + offset);
    }
}

void func_800419BC(ALBankFile *file, u8 *table) {
    s32 offset = (s32)file;
    s32 woffset = (s32)table;
    s32 i;

    if (file->revision != 0x4231) return;

    for (i = 0; i < file->bankCount; i++) {
        file->bankArray[i] = PATCH(file->bankArray[i], offset, ALBank *);
        if (file->bankArray[i])
            func_800419B4(file->bankArray[i], offset, woffset);
    }
}

static void func_800419B4(ALBank *bank, s32 offset, s32 table) {
    s32 i;

    if (bank->flags) return;
    bank->flags = 1;

    if (bank->percussion) {
        bank->percussion = PATCH(bank->percussion, offset, ALInstrument *);
        func_800418C8(bank->percussion, offset, table);
    }

    for (i = 0; i < bank->instCount; i++) {
        bank->instArray[i] = PATCH(bank->instArray[i], offset, ALInstrument *);
        if (bank->instArray[i])
            func_800418C8(bank->instArray[i], offset, table);
    }
}

static void func_800418C8(ALInstrument *inst, s32 offset, s32 table) {
    s32 i;

    if (inst->flags) return;
    inst->flags = 1;

    for (i = 0; i < inst->soundCount; i++) {
        inst->soundArray[i] = PATCH(inst->soundArray[i], offset, ALSound *);
        func_800418C0(inst->soundArray[i], offset, table);
    }
}

static void func_800418C0(ALSound *s, s32 offset, s32 table) {
    if (s->flags) return;
    s->flags = 1;

    s->envelope = PATCH(s->envelope, offset, ALEnvelope *);
    s->keyMap = PATCH(s->keyMap, offset, ALKeyMap *);
    s->wavetable = PATCH(s->wavetable, offset, ALWaveTable *);
    func_800418B8(s->wavetable, offset, table);
}

static void func_800418B8(ALWaveTable *w, s32 offset, s32 table) {
    if (w->flags) return;
    w->flags = 1;

    w->base += table;

    if (w->type == 0) {
        w->waveInfo.adpcmWave.book = PATCH(w->waveInfo.adpcmWave.book, offset, ALADPCMBook *);
        if (w->waveInfo.adpcmWave.loop)
            w->waveInfo.adpcmWave.loop = PATCH(w->waveInfo.adpcmWave.loop, offset, ALADPCMloop *);
    } else if (w->type == 1) {
        if (w->waveInfo.rawWave.loop)
            w->waveInfo.rawWave.loop = PATCH(w->waveInfo.rawWave.loop, offset, ALRawLoop *);
    }
}
