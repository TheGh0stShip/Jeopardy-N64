typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { u32 w0; u32 w1; } Gwords;
typedef union { Gwords words; long long force_structure_alignment; } Gfx;

#define _SHIFTL(v, s, w) ((u32)(((u32)(v) & ((0x01 << (w)) - 1)) << (s)))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define TXL2WORDS_4b(txls) MAX(1, ((txls) / 16))
#define CALC_DXT_4b(width) (((1 << 11) + TXL2WORDS_4b(width) - 1) / TXL2WORDS_4b(width))

#define gDPSetTextureImage(pkt, f, s, w, i) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xFD, 24, 8) | _SHIFTL(f, 21, 3) | _SHIFTL(s, 19, 2) | _SHIFTL((w) - 1, 0, 12); \
    _g->words.w1 = (u32)(i); }
#define gDPSetTile(pkt, fmt, siz, line, tmem, tile, palette, cmt, maskt, shiftt, cms, masks, shifts) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF5, 24, 8) | _SHIFTL(fmt, 21, 3) | _SHIFTL(siz, 19, 2) | _SHIFTL(line, 9, 9) | _SHIFTL(tmem, 0, 9); \
    _g->words.w1 = _SHIFTL(tile, 24, 3) | _SHIFTL(palette, 20, 4) | _SHIFTL(cmt, 18, 2) | _SHIFTL(maskt, 14, 4) | _SHIFTL(shiftt, 10, 4) | _SHIFTL(cms, 8, 2) | _SHIFTL(masks, 4, 4) | _SHIFTL(shifts, 0, 4); }
#define gDPNoParam(pkt, cmd) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(cmd, 24, 8); _g->words.w1 = 0; }
#define gDPLoadBlock(pkt, tile, uls, ult, lrs, dxt) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF3, 24, 8) | _SHIFTL(uls, 12, 12) | _SHIFTL(ult, 0, 12); \
    _g->words.w1 = _SHIFTL(tile, 24, 3) | _SHIFTL(MIN(lrs, 0x7FF), 12, 12) | _SHIFTL(dxt, 0, 12); }
#define gDPSetTileSize(pkt, t, uls, ult, lrs, lrt) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF2, 24, 8) | _SHIFTL(uls, 12, 12) | _SHIFTL(ult, 0, 12); \
    _g->words.w1 = _SHIFTL(t, 24, 3) | _SHIFTL(lrs, 12, 12) | _SHIFTL(lrt, 0, 12); }
#define gImmp1(pkt, c, p0) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(c, 24, 8); _g->words.w1 = (u32)(p0); }
#define gSPTextureRectangle(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy) { Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xE4, 24, 8) | _SHIFTL(xh, 12, 12) | _SHIFTL(yh, 0, 12); \
    _g->words.w1 = _SHIFTL(tile, 24, 3) | _SHIFTL(xl, 12, 12) | _SHIFTL(yl, 0, 12); \
    gImmp1(pkt, 0xB4, (_SHIFTL(s, 16, 16) | _SHIFTL(t, 0, 16))); \
    gImmp1(pkt, 0xB3, (_SHIFTL(dsdx, 16, 16) | _SHIFTL(dtdy, 0, 16))); \
    gDPNoParam(pkt, 0xE7); }

extern Gfx *D_800E0F4C;

void func_80020C40(s32 x, s32 y, u32 width, u32 height, void *img) {
    u32 pad;

    if (width % 16) {
        pad = (width / 16 + 1) * 16 - width;
    } else {
        pad = 0;
    }
    gDPSetTextureImage(D_800E0F4C++, 2, 2, 1, img);
    gDPSetTile(D_800E0F4C++, 2, 2, 0, 0, 7, 0, 1, 0, 0, 1, 0, 0);
    gDPNoParam(D_800E0F4C++, 0xE6);
    gDPLoadBlock(D_800E0F4C++, 7, 0, 0, (((width + pad) * height + 3) >> 2) - 1, CALC_DXT_4b(width + pad));
    gDPNoParam(D_800E0F4C++, 0xE7);
    gDPSetTile(D_800E0F4C++, 2, 0, ((((width + pad) >> 1) + 7) >> 3), 0, 0, 0, 1, 0, 0, 1, 0, 0);
    gDPSetTileSize(D_800E0F4C++, 0, 0, 0, ((width + pad) - 1) << 2, (height - 1) << 2);
    gDPNoParam(D_800E0F4C++, 0xE7);
    gSPTextureRectangle(D_800E0F4C++, x << 2, y << 2, (x + width + pad - 1) << 2, (y + height - 1) << 2, 0, 0, 0, 0x1000, 0x400);
}
