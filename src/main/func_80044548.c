typedef signed short s16;
typedef signed int s32;

typedef struct {
    s16 type;
    union {
        struct {
            s32 a;
            s32 b;
            s32 c;
        } x;
    } msg;
} ALEvent;

typedef struct {
    char unk_00[0x48];
    char evtq[0x10];
} ALSeqPlayer;

extern void alEvtqPostEvent(void *evtq, ALEvent *evt, s32 delta);

void func_80044548(ALSeqPlayer *seqp, s32 arg1) {
    ALEvent evt;

    evt.type = 13;
    evt.msg.x.a = arg1;
    alEvtqPostEvent(&seqp->evtq, &evt, 0);
}
