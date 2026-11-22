typedef signed short s16; typedef signed int s32; typedef unsigned int u32;
typedef struct { u32 w0; u32 w1; } Awords;
typedef union { Awords words; long long force_structure_alignment; } Acmd;
typedef struct ALFilter_s ALFilter;
typedef Acmd *(*ALCmdHandler)(void *, s16 *, s32, s32, Acmd *);
struct ALFilter_s {
    ALFilter *source;
    ALCmdHandler handler;
    void *setParam;
    s16 inp;
    s16 outp;
    s32 type;
};
typedef struct {
    ALFilter filter;
    s32 sourceCount;
    s32 maxSources;
    ALFilter **sources;
} ALMainBus;

Acmd *func_8003E208(void *filter, s16 *outp, s32 outCount, s32 sampleOffset, Acmd *p)
{
    Acmd *ptr = p;
    ALMainBus *m = (ALMainBus *)filter;
    ALFilter **sources = m->sources;
    s32 i;

    {
        Acmd *_a = ptr++;
        _a->words.w0 = (0x02 << 24) | 0x6C0;
        _a->words.w1 = (u32)(outCount << 1);
    }
    {
        Acmd *_a = ptr++;
        _a->words.w0 = (0x02 << 24) | 0x800;
        _a->words.w1 = (u32)(outCount << 1);
    }
    for (i = 0; i < m->sourceCount; i++) {
        ptr = (*sources[i]->handler)(sources[i], outp, outCount, sampleOffset, ptr);
    }
    return ptr;
}
