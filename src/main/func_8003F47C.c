typedef signed int s32;
typedef unsigned char u8;

extern s32 alHeapDBAlloc();
extern void func_80042AA8();
extern s32 alAdpcmPull();
extern s32 alLoadParam();

typedef s32 (*ALDMAproc)();
typedef ALDMAproc (*ALDMANew)(void *);

typedef struct {
    u8 filter[0x14];
    s32 *state;
    s32 *lstate;
    u8 pad1C[0x30 - 0x1C];
    ALDMAproc dma;
    void *dmaState;
    s32 pad38;
    s32 lastsam;
    s32 first;
    s32 memin;
} ALLoadFilter;

void func_8003F47C(ALLoadFilter *f, ALDMANew dmaNew, void *hp)
{
    func_80042AA8(f, alAdpcmPull, alLoadParam, 0);
    f->state = (s32 *)alHeapDBAlloc(0, 0, hp, 1, 0x20);
    f->lstate = (s32 *)alHeapDBAlloc(0, 0, hp, 1, 0x20);
    f->dma = dmaNew(&f->dmaState);
    f->lastsam = 0;
    f->first = 1;
    f->memin = 0;
}
