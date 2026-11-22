typedef struct { short type; union { struct { void *bank; } spbank; } msg; int pad[2]; } ALEvent;
typedef struct { void *a; void *b; void *c; void *d; int e; } ALEventQueue;
typedef struct { char unk_00[0x48]; ALEventQueue evtq; } ALSeqPlayer;
void alEvtqPostEvent(ALEventQueue *q, ALEvent *e, int delta);

void func_8003E318(ALSeqPlayer *seqp, void *b)
{
    ALEvent evt;

    evt.type = 14;
    evt.msg.spbank.bank = b;
    alEvtqPostEvent(&seqp->evtq, &evt, 0);
}
