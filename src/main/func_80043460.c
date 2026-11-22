typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;

typedef struct {
    u32 w0;
    u32 w1;
} Acmd;

typedef struct {
    /* 0x00 */ s16 fc;
    /* 0x02 */ s16 fgain;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ s16 fccoef[16];
    /* 0x28 */ s16 *fstate;
    /* 0x2C */ s32 first;
} ALLowPass;

#define _SHIFTL(v, s, w) ((unsigned int) (((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define aSetBuffer(pkt, f, i, o, c) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); _a->w1 = (_SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16)); }
#define aLoadADPCM(pkt, c, d) { Acmd *_a = (Acmd *)pkt; _a->w0 = _SHIFTL(11, 24, 8) | _SHIFTL(c, 0, 24); _a->w1 = (unsigned int) d; }
#define aPole(pkt, f, g, s) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(14, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(g, 0, 16)); _a->w1 = (unsigned int)(s); }

extern u32 osVirtualToPhysical(void *addr);

Acmd *func_80043460(ALLowPass *lp, s32 buff, s32 count, Acmd *p)
{
    Acmd *ptr = p;

    aSetBuffer(ptr++, 0, buff, buff, count << 1);
    aLoadADPCM(ptr++, 32, osVirtualToPhysical(lp->fccoef));
    aPole(ptr++, lp->first, lp->fgain, osVirtualToPhysical(lp->fstate));
    lp->first = 0;
    return ptr;
}
