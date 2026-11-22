typedef signed short s16; typedef unsigned short u16; typedef signed int s32; typedef unsigned int u32;

typedef struct {
    u32 w0;
    u32 w1;
} Acmd;

#define _SHIFTL(v, s, w) ((unsigned int)(((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))

#define aClearBuffer(pkt, d, c) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->w0 = _SHIFTL(2, 24, 8) | _SHIFTL(d, 0, 24); \
    _a->w1 = (unsigned int)(c); }

#define aSetBuffer(pkt, f, i, o, c) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); \
    _a->w1 = (_SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16)); }

#define aMix(pkt, f, g, i, o) { \
    Acmd *_a = (Acmd *)pkt; \
    _a->w0 = (_SHIFTL(12, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(g, 0, 16)); \
    _a->w1 = _SHIFTL(i, 16, 16) | _SHIFTL(o, 0, 16); }

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
    s32 sourceCount;
    s32 maxSources;
    ALFilter **sources;
} ALMainBus;

#define AL_MAIN_L_OUT 0x440
#define AL_MAIN_R_OUT 0x580
#define AL_AUX_L_OUT 0x6C0
#define AL_AUX_R_OUT 0x800

Acmd *func_80042AF8(void *filter, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p)
{
    Acmd *ptr = p;
    ALMainBus *m = (ALMainBus *)filter;
    ALFilter **sources = m->sources;
    s32 i;

    aClearBuffer(ptr++, AL_MAIN_L_OUT, outCount << 1);
    aClearBuffer(ptr++, AL_MAIN_R_OUT, outCount << 1);

    for (i = 0; i < m->sourceCount; i++) {
        ptr = (*sources[i]->handler)(sources[i], outp, outCount, sampleOffset, ptr);
        aSetBuffer(ptr++, 0, 0, 0, outCount << 1);
        aMix(ptr++, 0, 0x7fff, AL_AUX_L_OUT, AL_MAIN_L_OUT);
        aMix(ptr++, 0, 0x7fff, AL_AUX_R_OUT, AL_MAIN_R_OUT);
    }
    return ptr;
}
