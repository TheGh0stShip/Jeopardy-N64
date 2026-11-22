typedef signed short s16; typedef signed int s32; typedef unsigned int u32;

typedef struct {
    u32 w0;
    u32 w1;
} Acmd;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    s16 *base;
    s16 *input;
    s32 length;
} ALFx;

extern u32 func_80043338(void *addr);

#define _SHIFTL(v, s, w) ((unsigned int) (((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))

#define aSetBuffer(pkt, f, i, o, c) \
{ \
    Acmd *_a = (Acmd *)pkt; \
    _a->w0 = (_SHIFTL(8, 24, 8) | _SHIFTL(f, 16, 8) | _SHIFTL(i, 0, 16)); \
    _a->w1 = (_SHIFTL(o, 16, 16) | _SHIFTL(c, 0, 16)); \
}

#define aLoadBuffer(pkt, s) \
{ \
    Acmd *_a = (Acmd *)pkt; \
    _a->w0 = _SHIFTL(4, 24, 8); \
    _a->w1 = (unsigned int)(s); \
}

Acmd *func_800436A0(ALFx *r, s16 *curr_ptr, s32 buff, s32 count, Acmd *p)
{
    Acmd *ptr = p;
    s32 after_end, before_end;
    s16 *updated_ptr, *delay_end;

    delay_end = &r->base[r->length];

    if (curr_ptr < r->base)
        curr_ptr += r->length;
    updated_ptr = curr_ptr + count;

    if (updated_ptr > delay_end) {
        after_end = updated_ptr - delay_end;
        before_end = delay_end - curr_ptr;

        aSetBuffer(ptr++, 0, buff, 0, before_end << 1);
        aLoadBuffer(ptr++, func_80043338(curr_ptr));
        aSetBuffer(ptr++, 0, buff + (before_end << 1), 0, after_end << 1);
        aLoadBuffer(ptr++, func_80043338(r->base));
    } else {
        aSetBuffer(ptr++, 0, buff, 0, count << 1);
        aLoadBuffer(ptr++, func_80043338(curr_ptr));
    }

    aSetBuffer(ptr++, 0, 0, 0, count << 1);

    return ptr;
}
