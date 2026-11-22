typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { u32 w0; u32 w1; } Gwords;
typedef union { Gwords words; long long force_structure_alignment; } Gfx;

#define MAX(a, b) (((a) > (b)) ? (a) : (b))
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#define _SHIFTL(v, s, w) ((unsigned int)(((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define G_TX_DXT_FRAC 11
#define G_TX_LDBLK_MAX_TXL 2047
#define TXL2WORDS(txls, b_txl) MAX(1, ((txls) * (b_txl) / 8))
#define CALC_DXT(width, b_txl) (((1 << G_TX_DXT_FRAC) + TXL2WORDS(width, b_txl) - 1) / TXL2WORDS(width, b_txl))

#define gSetImage(pkt, cmd, fmt, siz, width, i) { \
    Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(cmd, 24, 8) | _SHIFTL(fmt, 21, 3) | _SHIFTL(siz, 19, 2) | _SHIFTL((width) - 1, 0, 12); \
    _g->words.w1 = (unsigned int)(i); \
}
#define gDPSetTile(pkt, fmt, siz, line, tmem, tile, palette, cmt, maskt, shiftt, cms, masks, shifts) { \
    Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF5, 24, 8) | _SHIFTL(fmt, 21, 3) | _SHIFTL(siz, 19, 2) | _SHIFTL(line, 9, 9) | _SHIFTL(tmem, 0, 9); \
    _g->words.w1 = _SHIFTL(tile, 24, 3) | _SHIFTL(palette, 20, 4) | _SHIFTL(cmt, 18, 2) | _SHIFTL(maskt, 14, 4) | \
        _SHIFTL(shiftt, 10, 4) | _SHIFTL(cms, 8, 2) | _SHIFTL(masks, 4, 4) | _SHIFTL(shifts, 0, 4); \
}
#define gDPNoParam(pkt, cmd) { \
    Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(cmd, 24, 8); \
    _g->words.w1 = 0; \
}
#define gDPLoadBlock(pkt, tile, uls, ult, lrs, dxt) { \
    Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF3, 24, 8) | _SHIFTL(uls, 12, 12) | _SHIFTL(ult, 0, 12); \
    _g->words.w1 = _SHIFTL(tile, 24, 3) | _SHIFTL(MIN(lrs, G_TX_LDBLK_MAX_TXL), 12, 12) | _SHIFTL(dxt, 0, 12); \
}
#define gDPSetTileSize(pkt, t, uls, ult, lrs, lrt) { \
    Gfx *_g = (Gfx *)(pkt); \
    _g->words.w0 = _SHIFTL(0xF2, 24, 8) | _SHIFTL(uls, 12, 12) | _SHIFTL(ult, 0, 12); \
    _g->words.w1 = _SHIFTL(t, 24, 3) | _SHIFTL(lrs, 12, 12) | _SHIFTL(lrt, 0, 12); \
}

extern Gfx *D_800E0F4C;

void func_80021060(u32 width, u32 height, void *timg) {
    gSetImage(D_800E0F4C++, 0xFD, 0, 2, 1, timg);
    gDPSetTile(D_800E0F4C++, 0, 2, 0, 0, 7, 0, 1, 6, 0, 1, 6, 0);
    gDPNoParam(D_800E0F4C++, 0xE6);
    gDPLoadBlock(D_800E0F4C++, 7, 0, 0, (((width) * (height) + 0) >> 0) - 1, CALC_DXT(width, 2));
    gDPNoParam(D_800E0F4C++, 0xE7);
    gDPSetTile(D_800E0F4C++, 0, 2, (((width) * 2) + 7) >> 3, 0, 0, 0, 1, 6, 0, 1, 6, 0);
    gDPSetTileSize(D_800E0F4C++, 0, 0, 0, ((width) - 1) << 2, ((height) - 1) << 2);
    gDPNoParam(D_800E0F4C++, 0xE7);
}
