/* libultra sched.c (SDK 2.0F, _FINALROM, no SC_LOGGING), rows 0x8004B158..0x8004BA94 */
typedef signed char s8; typedef unsigned char u8; typedef short s16; typedef unsigned short u16;
typedef int s32; typedef unsigned int u32; typedef unsigned long long u64;
typedef void *OSMesg;
typedef u32 OSIntMask;
typedef s32 OSPri;
typedef struct OSThread_s { u8 data[0x1B0]; } OSThread; /* opaque here */
typedef struct OSMesgQueue_s {
    OSThread *mtqueue; OSThread *fullqueue; s32 validCount; s32 first; s32 msgCount; OSMesg *msg;
} OSMesgQueue;
typedef struct {
    u32 type; u32 flags; u64 *ucode_boot; u32 ucode_boot_size; u64 *ucode; u32 ucode_size;
    u64 *ucode_data; u32 ucode_data_size; u64 *dram_stack; u32 dram_stack_size;
    u64 *output_buff; u64 *output_buff_size; u64 *data_ptr; u32 data_size;
    u64 *yield_data_ptr; u32 yield_data_size;
} OSTask_t;
typedef union { OSTask_t t; long long force_structure_alignment; } OSTask;

#define M_GFXTASK 1
#define M_AUDTASK 2
#define OS_MESG_NOBLOCK 0
#define OS_MESG_BLOCK 1
#define OS_IM_NONE 1
#define NULL 0

#define VIDEO_MSG       666
#define RSP_DONE_MSG    667
#define RDP_DONE_MSG    668
#define PRE_NMI_MSG     669

#define OS_SC_NEEDS_RDP         0x0001
#define OS_SC_NEEDS_RSP         0x0002
#define OS_SC_DRAM_DLIST        0x0004
#define OS_SC_PARALLEL_TASK     0x0010
#define OS_SC_LAST_TASK         0x0020
#define OS_SC_SWAPBUFFER        0x0040
#define OS_SC_RCP_MASK          0x0003
#define OS_SC_TYPE_MASK         0x0007
#define OS_SC_DP                0x0001
#define OS_SC_SP                0x0002
#define OS_SC_YIELD             0x0010
#define OS_SC_YIELDED           0x0020
#define OS_SC_XBUS      (OS_SC_SP | OS_SC_DP)
#define OS_SC_DRAM      (OS_SC_SP | OS_SC_DP | OS_SC_DRAM_DLIST)
#define OS_SC_DP_XBUS   (OS_SC_SP)
#define OS_SC_DP_DRAM   (OS_SC_SP | OS_SC_DRAM_DLIST)
#define OS_SC_SP_XBUS   (OS_SC_DP)
#define OS_SC_SP_DRAM   (OS_SC_DP | OS_SC_DRAM_DLIST)

typedef struct { short type; char misc[30]; } OSScMsg;
typedef struct OSScTask_s {
    struct OSScTask_s *next; u32 state; u32 flags; void *framebuffer;
    OSTask list; OSMesgQueue *msgQ; OSMesg msg;
} OSScTask;
typedef struct SCClient_s { struct SCClient_s *next; OSMesgQueue *msgQ; } OSScClient;
typedef struct {
    OSScMsg retraceMsg; OSScMsg prenmiMsg;
    OSMesgQueue interruptQ; OSMesg intBuf[8];
    OSMesgQueue cmdQ; OSMesg cmdMsgBuf[8];
    OSThread thread;
    OSScClient *clientList;
    OSScTask *audioListHead; OSScTask *gfxListHead;
    OSScTask *audioListTail; OSScTask *gfxListTail;
    OSScTask *curRSPTask; OSScTask *curRDPTask;
    u32 frameCount; s32 doAudio;
} OSSched;

extern OSIntMask osSetIntMask(OSIntMask);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
extern s32 osSendMesg(OSMesgQueue *, OSMesg, s32);
extern void *osViGetCurrentFramebuffer(void);
extern void *osViGetNextFramebuffer(void);
extern void osViBlack(u8);
extern void osViSwapBuffer(void *);
extern void osWritebackDCacheAll(void);
extern void osSpTaskLoad(OSTask *);
extern void osSpTaskStartGo(OSTask *);
extern void osSpTaskYield(void);
extern u32 osSpTaskYielded(OSTask *);
extern s32 osDpSetNextBuffer(void *, u64);

typedef struct { u8 data[0x50]; } OSViMode; /* opaque here */
extern OSViMode D_80072568[]; /* osViModeTable */
extern void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
extern void osCreateViManager(OSPri);
extern void osViSetMode(OSViMode *);
extern void osSetEventMesg(u32, OSMesgQueue *, OSMesg);
extern void osViSetEvent(OSMesgQueue *, OSMesg, u32);
extern void osCreateThread(OSThread *, s32, void (*)(void *), void *, void *, OSPri);
extern void osStartThread(OSThread *);
extern s32 D_800723F8; /* dp_busy */
extern s32 D_800723FC; /* dpCount */

static void __scMain(void *arg);
static void __scHandleRetrace(OSSched *s);
static void __scHandleRSP(OSSched *s);
static void __scHandleRDP(OSSched *s);
static void __scAppendList(OSSched *s, OSScTask *t);
OSScTask *__scTaskReady(OSScTask *t);
static s32 __scTaskComplete(OSSched *sc, OSScTask *t);
static void __scExec(OSSched *sc, OSScTask *sp, OSScTask *dp);
static void __scYield(OSSched *s);
static s32 __scSchedule(OSSched *sc, OSScTask **sp, OSScTask **dp, s32 availRCP);

void osCreateScheduler(OSSched *sc, void *stack, OSPri priority, u8 mode, u8 numFields)
{
    sc->curRSPTask = 0;
    sc->curRDPTask = 0;
    sc->clientList = 0;
    sc->frameCount = 0;
    sc->audioListHead = 0;
    sc->gfxListHead = 0;
    sc->audioListTail = 0;
    sc->gfxListTail = 0;
    sc->retraceMsg.type = 1; /* OS_SC_RETRACE_MSG */
    sc->prenmiMsg.type = 4;  /* OS_SC_PRE_NMI_MSG */
    osCreateMesgQueue(&sc->interruptQ, sc->intBuf, 8);
    osCreateMesgQueue(&sc->cmdQ, sc->cmdMsgBuf, 8);
    osCreateViManager(254);
    osViSetMode(&D_80072568[mode]);
    osViBlack(1);
    osSetEventMesg(4, &sc->interruptQ, (OSMesg)RSP_DONE_MSG);   /* OS_EVENT_SP */
    osSetEventMesg(9, &sc->interruptQ, (OSMesg)RDP_DONE_MSG);   /* OS_EVENT_DP */
    osSetEventMesg(14, &sc->interruptQ, (OSMesg)PRE_NMI_MSG);   /* OS_EVENT_PRENMI */
    osViSetEvent(&sc->interruptQ, (OSMesg)VIDEO_MSG, numFields);
    osCreateThread(&sc->thread, 4, __scMain, (void *)sc, stack, priority);
    osStartThread(&sc->thread);
}

void osScAddClient(OSSched *sc, OSScClient *c, OSMesgQueue *msgQ)
{
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);
    c->msgQ = msgQ;
    c->next = sc->clientList;
    sc->clientList = c;
    osSetIntMask(mask);
}

void osScRemoveClient(OSSched *sc, OSScClient *c)
{
    OSScClient *client = sc->clientList;
    OSScClient *prev = 0;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);
    while (client != 0) {
        if (client == c) {
            if (prev)
                prev->next = c->next;
            else
                sc->clientList = c->next;
            break;
        }
        prev = client;
        client = client->next;
    }
    osSetIntMask(mask);
}

OSMesgQueue *osScGetCmdQ(OSSched *sc)
{
    return &sc->cmdQ;
}

static void __scMain(void *arg)
{
    OSMesg msg;
    OSSched *sc = (OSSched *)arg;
    OSScClient *client;

    while (1) {
        osRecvMesg(&sc->interruptQ, (OSMesg *)&msg, OS_MESG_BLOCK);
        switch ((int)msg) {
        case (VIDEO_MSG):
            __scHandleRetrace(sc);
            break;
        case (RSP_DONE_MSG):
            __scHandleRSP(sc);
            break;
        case (RDP_DONE_MSG):
            __scHandleRDP(sc);
            break;
        case (PRE_NMI_MSG):
            for (client = sc->clientList; client != 0; client = client->next) {
                osSendMesg(client->msgQ, (OSMesg)&sc->prenmiMsg, OS_MESG_NOBLOCK);
            }
            break;
        }
    }
}

void __scHandleRetrace(OSSched *sc)
{
    OSScTask *rspTask;
    OSScClient *client;
    s32 i;
    s32 state;
    OSScTask *sp = 0;
    OSScTask *dp = 0;

    sc->frameCount++;
    while (osRecvMesg(&sc->cmdQ, (OSMesg *)&rspTask, OS_MESG_NOBLOCK) != -1) {
        __scAppendList(sc, rspTask);
    }
    if (sc->doAudio && sc->curRSPTask) {
        __scYield(sc);
    } else {
        state = ((sc->curRSPTask == 0) << 1) | (sc->curRDPTask == 0);
        if (__scSchedule(sc, &sp, &dp, state) != state)
            __scExec(sc, sp, dp);
    }
    for (client = sc->clientList; client != 0; client = client->next) {
        osSendMesg(client->msgQ, (OSMesg)&sc->retraceMsg, OS_MESG_NOBLOCK);
    }
}

void __scHandleRSP(OSSched *sc)
{
    OSScTask *t, *sp = 0, *dp = 0;
    s32 state;

    t = sc->curRSPTask;
    sc->curRSPTask = 0;
    if ((t->state & OS_SC_YIELD) && osSpTaskYielded(&t->list)) {
        t->state |= OS_SC_YIELDED;
        if ((t->flags & OS_SC_TYPE_MASK) == OS_SC_XBUS) {
            t->next = sc->gfxListHead;
            sc->gfxListHead = t;
            if (sc->gfxListTail == 0)
                sc->gfxListTail = t;
        }
    } else {
        t->state &= ~OS_SC_NEEDS_RSP;
        __scTaskComplete(sc, t);
    }
    state = ((sc->curRSPTask == 0) << 1) | (sc->curRDPTask == 0);
    if ((__scSchedule(sc, &sp, &dp, state)) != state)
        __scExec(sc, sp, dp);
}

void __scHandleRDP(OSSched *sc)
{
    OSScTask *t, *sp = 0, *dp = 0;
    s32 state;

    t = sc->curRDPTask;
    sc->curRDPTask = 0;
    t->state &= ~OS_SC_NEEDS_RDP;
    __scTaskComplete(sc, t);
    state = ((sc->curRSPTask == 0) << 1) | (sc->curRDPTask == 0);
    if ((__scSchedule(sc, &sp, &dp, state)) != state)
        __scExec(sc, sp, dp);
}

OSScTask *__scTaskReady(OSScTask *t)
{
    int rv = 0;
    void *a;
    void *b;

    if (t) {
        if ((a = osViGetCurrentFramebuffer()) != (b = osViGetNextFramebuffer())) {
            return 0;
        }
        return t;
    }
    return 0;
}

s32 __scTaskComplete(OSSched *sc, OSScTask *t)
{
    int rv;
    static int firsttime = 1;

    if ((t->state & OS_SC_RCP_MASK) == 0) {
        rv = osSendMesg(t->msgQ, t->msg, OS_MESG_BLOCK);
        if (t->list.t.type == M_GFXTASK) {
            if ((t->flags & OS_SC_SWAPBUFFER) && (t->flags & OS_SC_LAST_TASK)) {
                if (firsttime) {
                    osViBlack(0);
                    firsttime = 0;
                }
                osViSwapBuffer(t->framebuffer);
            }
        }
        return 1;
    }
    return 0;
}

void __scAppendList(OSSched *sc, OSScTask *t)
{
    long type = t->list.t.type;

    if (type == M_AUDTASK) {
        if (sc->audioListTail)
            sc->audioListTail->next = t;
        else
            sc->audioListHead = t;
        sc->audioListTail = t;
        sc->doAudio = 1;
    } else {
        if (sc->gfxListTail)
            sc->gfxListTail->next = t;
        else
            sc->gfxListHead = t;
        sc->gfxListTail = t;
    }
    t->next = NULL;
    t->state = t->flags & OS_SC_RCP_MASK;
}

void __scExec(OSSched *sc, OSScTask *sp, OSScTask *dp)
{
    int rv;

    if (sp) {
        if (sp->list.t.type == M_AUDTASK) {
            osWritebackDCacheAll();
        }
        sp->state &= ~(OS_SC_YIELD | OS_SC_YIELDED);
        osSpTaskLoad(&sp->list);
        osSpTaskStartGo(&sp->list);
        sc->curRSPTask = sp;
        if (sp == dp)
            sc->curRDPTask = dp;
    }
    if (dp && (dp != sp)) {
        rv = osDpSetNextBuffer(dp->list.t.output_buff, *dp->list.t.output_buff_size);
        D_800723F8 = 1;
        D_800723FC = 0;
        sc->curRDPTask = dp;
    }
}

static void __scYield(OSSched *sc)
{
    if (sc->curRSPTask->list.t.type == M_GFXTASK) {
        sc->curRSPTask->state |= OS_SC_YIELD;
        osSpTaskYield();
    }
}

s32 __scSchedule(OSSched *sc, OSScTask **sp, OSScTask **dp, s32 availRCP)
{
    s32 avail = availRCP;
    OSScTask *gfx = sc->gfxListHead;
    OSScTask *audio = sc->audioListHead;

    if (sc->doAudio && (avail & OS_SC_SP)) {
        if (gfx && (gfx->flags & OS_SC_PARALLEL_TASK)) {
            *sp = gfx;
            avail &= ~OS_SC_SP;
        } else {
            *sp = audio;
            avail &= ~OS_SC_SP;
            sc->doAudio = 0;
            sc->audioListHead = sc->audioListHead->next;
            if (sc->audioListHead == NULL)
                sc->audioListTail = NULL;
        }
    } else {
        if (__scTaskReady(gfx)) {
            switch (gfx->flags & OS_SC_TYPE_MASK) {
            case (OS_SC_XBUS):
                if (gfx->state & OS_SC_YIELDED) {
                    if (avail & OS_SC_SP) {
                        *sp = gfx;
                        avail &= ~OS_SC_SP;
                        if (gfx->state & OS_SC_DP) {
                            *dp = gfx;
                            avail &= ~OS_SC_DP;
                        }
                        sc->gfxListHead = sc->gfxListHead->next;
                        if (sc->gfxListHead == NULL)
                            sc->gfxListTail = NULL;
                    }
                } else {
                    if (avail == (OS_SC_SP | OS_SC_DP)) {
                        *sp = *dp = gfx;
                        avail &= ~(OS_SC_SP | OS_SC_DP);
                        sc->gfxListHead = sc->gfxListHead->next;
                        if (sc->gfxListHead == NULL)
                            sc->gfxListTail = NULL;
                    }
                }
                break;
            case (OS_SC_DRAM):
            case (OS_SC_DP_DRAM):
            case (OS_SC_DP_XBUS):
                if (gfx->state & OS_SC_SP) {
                    if (avail & OS_SC_SP) {
                        *sp = gfx;
                        avail &= ~OS_SC_SP;
                    }
                } else if (gfx->state & OS_SC_DP) {
                    if (avail & OS_SC_DP) {
                        *dp = gfx;
                        avail &= ~OS_SC_DP;
                        sc->gfxListHead = sc->gfxListHead->next;
                        if (sc->gfxListHead == NULL)
                            sc->gfxListTail = NULL;
                    }
                }
                break;
            case (OS_SC_SP_DRAM):
            case (OS_SC_SP_XBUS):
            default:
                break;
            }
        }
    }
    if (avail != availRCP)
        avail = __scSchedule(sc, sp, dp, avail);
    return avail;
}
