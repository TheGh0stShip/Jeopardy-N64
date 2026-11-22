typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;

typedef struct {
    u32 w0;
    u32 w1;
} Acmd;

typedef struct {
    void *source;
    void *handler;
    void *setParam;
    s16 inp;
    s16 outp;
    s32 type;
    s16 *base;
    s16 *input;
    u32 length;
} ALFx;

#define _SHIFTL(v, s, w) ((unsigned int) (((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define aSetBuffer(pkt, f, i, o, c) { Acmd *_a = (Acmd *)pkt; _a->w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); _a->w1 = (_SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16)); }
#define aSaveBuffer(pkt, s) { Acmd *_a = (Acmd *)pkt; _a->w0 = _SHIFTL(6, 24, 8); _a->w1 = (unsigned int)(s); }

extern u32 osVirtualToPhysical(void *addr);

Acmd *func_80043518(ALFx *r, s16 *curr_ptr, s32 buff, s32 count, Acmd *p)
{
    Acmd *ptr = p;
    s32 after_end, before_end;
    s16 *updated_ptr, *delay_end;

    delay_end = &r->base[r->length];
    if (curr_ptr < r->base)
        curr_ptr += r->length;
    updated_ptr = curr_ptr + count;

    if (updated_ptr > delay_end) {
        before_end = delay_end - curr_ptr;
        after_end = updated_ptr - delay_end;

        aSetBuffer(ptr++, 0, 0, buff, before_end << 1);
        aSaveBuffer(ptr++, osVirtualToPhysical(curr_ptr));
        aSetBuffer(ptr++, 0, 0, buff + (before_end << 1), after_end << 1);
        aSaveBuffer(ptr++, osVirtualToPhysical(r->base));
        aSetBuffer(ptr++, 0, 0, 0, count << 1);
    } else {
        aSetBuffer(ptr++, 0, 0, buff, count << 1);
        aSaveBuffer(ptr++, osVirtualToPhysical(curr_ptr));
    }
    return ptr;
}
