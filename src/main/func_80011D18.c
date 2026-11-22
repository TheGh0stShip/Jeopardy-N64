typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct Font {
    u16 type;
    u16 unk2;
    u16 spacing;
    u16 unk6;
    u16 offset[0x60];
    u8 width[0x60];
    u8 height[0x60];
    s8 yoff[0x60];
    u8 data[1];
} Font;

extern u16 D_80055B60;
extern u16 D_80055B62;
extern u16 *D_800DE020;
extern s32 D_800E3694;
extern s32 D_800E3720;
extern Font *D_800E3724;
extern s32 D_800E3740;
extern u16 D_800E3742;
void func_80011B24(u8 *, s32 *, s32 *, s32 *, s32 *);

void *func_80011D18(u8 *str) {
    s32 n;
    s32 x0;
    u16 *src;
    u16 *dst;
    u16 *base;
    u8 *src8;
    u8 *dst8;
    u8 *base8;
    u16 x;
    u16 i;
    u16 j;
    u16 size;
    u8 c;
    u16 k;

    k = D_80055B62;
    func_80011B24(str, &D_800E3740, &D_800E3720, &D_800E3694, &x0);
    size = D_800E3740 * D_800E3720;
    switch (D_800E3724->type) {
    case 0:
        base = src = D_800DE020;
        for (n = size; n != 0; n--) {
            *src++ = 0;
        }
        size += 7;
        size &= 0xFFF8;
        D_800DE020 += size;
        x = 0;
        while ((c = *str++) != 0) {
            c -= 0x20;
            if (c >= 0x60) {
                c = 0;
            }
            src = (u16 *)&D_800E3724->data[D_800E3724->offset[c]];
            dst = base + x0 + ((D_800E3694 - D_800E3724->yoff[c]) * D_800E3740 + x);
            for (j = D_800E3724->height[c]; j != 0; j--) {
                for (i = D_800E3724->width[c]; i != 0; i--) {
                    *dst++ = *src++;
                }
                dst += D_800E3740 - D_800E3724->width[c];
                if (--k == 0) {
                    k = D_80055B62;
                    dst--;
                }
            }
            x += D_800E3724->width[c] + D_800E3724->spacing;
        }
        if (D_80055B60 & 8) {
            dst = base + (D_800E3694 + 1) * D_800E3740;
            for (i = D_800E3742; i != 0; i--) {
                *dst++ = 0xFFFF;
            }
        }
        return base;
    case 1:
        base8 = src8 = (u8 *)D_800DE020;
        for (n = size; n != 0; n--) {
            *src8++ = 0;
        }
        size += 7;
        size &= 0xFFF8;
        D_800DE020 += size / 2;
        x = 0;
        while ((c = *str++) != 0) {
            c -= 0x20;
            if (c >= 0x60) {
                c = 0;
            }
            src8 = &D_800E3724->data[D_800E3724->offset[c]];
            dst8 = base8 + x0 + ((D_800E3694 - D_800E3724->yoff[c]) * D_800E3740 + x);
            for (j = D_800E3724->height[c]; j != 0; j--) {
                for (i = D_800E3724->width[c]; i != 0; i--) {
                    *dst8++ = *src8++;
                }
                dst8 += D_800E3740 - D_800E3724->width[c];
                if (--k == 0) {
                    k = D_80055B62;
                    dst8--;
                }
            }
            x += D_800E3724->width[c] + D_800E3724->spacing;
        }
        if (D_80055B60 & 8) {
            dst8 = base8 + (D_800E3694 + 1) * D_800E3740;
            for (i = D_800E3742; i != 0; i--) {
                *dst8++ = 0xFF;
            }
        }
        return base8;
    }
}
