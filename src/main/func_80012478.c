typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

typedef struct {
    /* 0x000 */ u16 type;
    /* 0x002 */ u16 pad2;
    /* 0x004 */ u16 spacing;
    /* 0x006 */ u16 pad6;
    /* 0x008 */ u16 offset[96];
    /* 0x0C8 */ u8 width[96];
    /* 0x128 */ u8 height[96];
    /* 0x188 */ s8 top[96];
} FontHeader;

extern u16 D_80055B60;
extern u16 D_80055B62;
extern u16 *D_800DE020;
extern s32 D_800E3694;
extern s32 D_800E3720;
extern FontHeader *D_800E3724;
extern s32 D_800E3740;
extern u16 D_800E3742;
s32 func_80011B24();

void *func_80012478(u8 *str, u16 *buf, s32 x, s32 y) {
    s32 n;
    s32 left;
    u16 *src16;
    u16 *dst16;
    u16 *out16;
    u8 *src8;
    u8 *dst8;
    u8 *out8;
    u16 pos;
    u16 col;
    u16 row;
    u16 size;
    u8 c;
    u16 skip;

    skip = D_80055B62;
    func_80011B24(str, &D_800E3740, &D_800E3720, &D_800E3694, &left);
    size = 0x4000;
    switch (D_800E3724->type) {
    case 0:
        out16 = src16 = buf;
        pos = 0;
        while ((c = *str++) != 0) {
            c -= 0x20;
            if (c >= 0x60) {
                c = 0;
            }
            src16 = (u16 *)((u8 *)D_800E3724 + (D_800E3724->offset[c] + 0x1E8));
            dst16 = (u16 *)(y * 256 + (u8 *)out16 + x * 2 + left * 2 + ((D_800E3694 - D_800E3724->top[c]) * 128 + pos) * 2);
            for (row = D_800E3724->height[c]; row != 0; row--) {
                for (col = D_800E3724->width[c]; col != 0; col--) {
                    if (*src16 != 0) {
                        *dst16++ = *src16++;
                    } else {
                        src16++;
                        dst16++;
                    }
                }
                dst16 += 128 - D_800E3724->width[c];
                if (--skip == 0) {
                    skip = D_80055B62;
                    dst16--;
                }
            }
            pos += D_800E3724->width[c] + D_800E3724->spacing;
        }
        return out16;
    case 1:
        out8 = src8 = (u8 *)D_800DE020;
        for (n = size; n != 0; n--) {
            *src8++ = 0;
        }
        size += 7;
        size &= ~7;
        D_800DE020 += (u16)(size / 2);
        pos = 0;
        while ((c = *str++) != 0) {
            c -= 0x20;
            if (c >= 0x60) {
                c = 0;
            }
            src8 = (u8 *)D_800E3724 + (D_800E3724->offset[c] + 0x1E8);
            dst8 = out8 + left + ((D_800E3694 - D_800E3724->top[c]) * D_800E3740 + pos);
            for (row = D_800E3724->height[c]; row != 0; row--) {
                for (col = D_800E3724->width[c]; col != 0; col--) {
                    *dst8++ = *src8++;
                }
                dst8 += D_800E3740 - D_800E3724->width[c];
                if (--skip == 0) {
                    skip = D_80055B62;
                    dst8--;
                }
            }
            pos += D_800E3724->width[c] + D_800E3724->spacing;
        }
        if (D_80055B60 & 8) {
            dst8 = out8 + (D_800E3694 + 1) * D_800E3740;
            for (col = D_800E3742; col != 0; col--) {
                *dst8++ = 0xFF;
            }
        }
        return out8;
    }
}
