typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { u32 w0; u32 w1; } Gwords;
typedef union { Gwords words; long long force_structure_alignment; } Gfx;
extern Gfx *D_800E0F4C;

#define SHL(v, s, w) ((u32)(((u32)(v) & ((0x01 << (w)) - 1)) << (s)))
#define MAX(a, b) (((a) > (b)) ? (a) : (b))
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#define TXL2WORDS(txls, b_txl) MAX(1, ((txls)*(b_txl)/8))
#define CALC_DXT(width, b_txl) (((1 << 11) + TXL2WORDS(width, b_txl) - 1) / TXL2WORDS(width, b_txl))

void func_80020700(s32 x, s32 y, u32 w, u32 h, void *timg) {
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xFD, 24, 8) | SHL(0, 21, 3) | SHL(2, 19, 2) | SHL(0, 0, 12);
        _g->words.w1 = (u32)timg;
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xF5, 24, 8) | SHL(0, 21, 3) | SHL(2, 19, 2) | SHL(0, 9, 9) | SHL(0, 0, 9);
        _g->words.w1 = SHL(7, 24, 3) | SHL(0, 20, 4) | SHL(1, 18, 2) | SHL(6, 14, 4) | SHL(0, 10, 4) | SHL(1, 8, 2) | SHL(6, 4, 4) | SHL(0, 0, 4);
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xE6, 24, 8);
        _g->words.w1 = 0;
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xF3, 24, 8) | SHL(0, 12, 12) | SHL(0, 0, 12);
        _g->words.w1 = SHL(7, 24, 3) | SHL(MIN(((w * h) + 0 >> 0) - 1, 0x7FF), 12, 12) | SHL(CALC_DXT(w, 2), 0, 12);
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xE7, 24, 8);
        _g->words.w1 = 0;
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xF5, 24, 8) | SHL(0, 21, 3) | SHL(2, 19, 2) | SHL(((w * 2) + 7) >> 3, 9, 9) | SHL(0, 0, 9);
        _g->words.w1 = SHL(0, 24, 3) | SHL(0, 20, 4) | SHL(1, 18, 2) | SHL(6, 14, 4) | SHL(0, 10, 4) | SHL(1, 8, 2) | SHL(6, 4, 4) | SHL(0, 0, 4);
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xF2, 24, 8) | SHL(0, 12, 12) | SHL(0, 0, 12);
        _g->words.w1 = SHL(0, 24, 3) | SHL((w - 1) << 2, 12, 12) | SHL((h - 1) << 2, 0, 12);
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xE7, 24, 8);
        _g->words.w1 = 0;
    }
    {
        Gfx *_g = D_800E0F4C++;
        _g->words.w0 = SHL(0xE4, 24, 8) | SHL((x + w - 1) << 2, 12, 12) | SHL((y + h - 1) << 2, 0, 12);
        _g->words.w1 = SHL(0, 24, 3) | SHL(x << 2, 12, 12) | SHL(y << 2, 0, 12);
        {
            Gfx *_g = D_800E0F4C++;
            _g->words.w0 = SHL(0xB4, 24, 8);
            _g->words.w1 = SHL(0, 16, 16) | SHL(0, 0, 16);
        }
        {
            Gfx *_g = D_800E0F4C++;
            _g->words.w0 = SHL(0xB3, 24, 8);
            _g->words.w1 = SHL(0x1000, 16, 16) | SHL(0x400, 0, 16);
        }
        {
            Gfx *_g = D_800E0F4C++;
            _g->words.w0 = SHL(0xE7, 24, 8);
            _g->words.w1 = 0;
        }
    }
}
