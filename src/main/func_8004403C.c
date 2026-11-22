typedef short s16;
typedef int s32;
typedef unsigned int u32;

typedef struct {
    u32 w0;
    u32 w1;
} Acmd;

typedef Acmd *(*ALCmdHandler)(void *, s16 *, s32, s32, Acmd *);
typedef s32 (*ALSetParam)(void *, s32, void *);

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    ALCmdHandler handler;
    ALSetParam setParam;
    s16 inp;
    s16 outp;
    s32 type;
} ALFilter;

typedef struct {
    ALFilter filter;
    s32 dramout;
    s32 first;
} ALSave;

#define _SHIFTL(v, s, w) ((unsigned int)(((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define A_INTERLEAVE 13
#define A_SAVEBUFF 6
#define A_SETBUFF 8
#define AL_MAIN_L_OUT 0x440
#define AL_MAIN_R_OUT 0x580

#define aSetBuffer(pkt, f, i, o, c)                                       \
    {                                                                     \
        Acmd *_a = (Acmd *)pkt;                                           \
        _a->w0 = (_SHIFTL(A_SETBUFF, 24, 8) | _SHIFTL(f, 16, 8) |         \
                  _SHIFTL(i, 0, 16));                                     \
        _a->w1 = _SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16);                  \
    }
#define aInterleave(pkt, l, r)                                            \
    {                                                                     \
        Acmd *_a = (Acmd *)pkt;                                           \
        _a->w0 = _SHIFTL(A_INTERLEAVE, 24, 8);                            \
        _a->w1 = _SHIFTL(l, 16, 16) | _SHIFTL(r, 0, 16);                  \
    }
#define aSaveBuffer(pkt, s)                                               \
    {                                                                     \
        Acmd *_a = (Acmd *)pkt;                                           \
        _a->w0 = _SHIFTL(A_SAVEBUFF, 24, 8);                              \
        _a->w1 = (unsigned int)(s);                                       \
    }

Acmd *func_8004403C(void *filter, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p)
{
    Acmd *ptr = p;
    ALSave *f = (ALSave *)filter;
    ALFilter *source = f->filter.source;

    ptr = (*source->handler)(source, outp, outCount, sampleOffset, p);

    aSetBuffer(ptr++, 0, 0, 0, outCount << 1);
    aInterleave(ptr++, AL_MAIN_L_OUT, AL_MAIN_R_OUT);
    aSetBuffer(ptr++, 0, 0, 0, outCount << 2);
    aSaveBuffer(ptr++, f->dramout);

    return ptr;
}
