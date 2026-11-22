typedef signed short s16; typedef signed int s32;
typedef struct { s16 type; s16 pad; s32 a; s32 b; s32 c; } ALEvent;
extern void alEvtqPostEvent(void *q, ALEvent *e, s32 delta);
void func_8003E2E8(char *seqp) {
    ALEvent evt;
    evt.type = 15;
    alEvtqPostEvent(seqp + 0x48, &evt, 0);
}
