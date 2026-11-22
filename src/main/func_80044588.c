typedef signed short s16; typedef signed int s32; typedef unsigned char u8;

typedef struct {
    s16 type;
    union {
        struct { s32 a; s32 b; s32 c; } raw;
    } msg;
} ALEvent;

extern void alEvtqPostEvent(void *evtq, ALEvent *evt, s32 delta);

void func_80044588(u8 *seqp) {
    ALEvent evt;

    evt.type = 0x11;
    alEvtqPostEvent(seqp + 0x48, &evt, 0);
}
