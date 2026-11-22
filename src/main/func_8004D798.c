typedef unsigned short u16;
typedef unsigned int u32;
typedef void *OSMesg;
typedef struct OSMesgQueue OSMesgQueue;

typedef struct {
    u16 state;
    u16 retraceCount;
    void *framep;
    void *modep;
    u32 control;
    OSMesgQueue *msgq;
    OSMesg msg;
} __OSViContext;

extern u32 __osDisableInt(void);
extern void func_8003FD08(u32);
extern __OSViContext *D_8007246C;

void func_8004D798(OSMesgQueue *mq, OSMesg m, u32 retraceCount)
{
    register u32 saveMask;

    saveMask = __osDisableInt();
    D_8007246C->msgq = mq;
    D_8007246C->msg = m;
    D_8007246C->retraceCount = retraceCount;
    func_8003FD08(saveMask);
}
