typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct {
    /* 0x000 */ u8 unk0[4];
    /* 0x004 */ u16 unk4;
    /* 0x006 */ u16 unk6;
    /* 0x008 */ u8 unk8[0xC0];
    /* 0x0C8 */ u8 unkC8[0x60];
    /* 0x128 */ u8 unk128[0x60];
    /* 0x188 */ s8 unk188[0x60];
} FontInfo;

extern FontInfo *D_800E3724;
extern u16 D_80055B62;

void func_80011B24(u8 *str, s32 *width, s32 *height, s32 *ascent, s32 *lines) {
    u8 c;
    s32 descent;
    s32 asc;
    s32 desc;

    *lines = *width = *ascent = descent = 0;
    while ((c = *str++) != 0) {
        c -= 32;
        if (c >= 96) {
            c = 0;
        }
        *width = *width + (D_800E3724->unkC8[c] + D_800E3724->unk4);
        asc = D_800E3724->unk188[c];
        desc = D_800E3724->unk128[c] - asc;
        if (*ascent < asc) {
            *ascent = asc;
        }
        if (descent < desc) {
            descent = desc;
        }
    }
    *width = *width - D_800E3724->unk4;
    *height = *ascent + descent;
    if (D_80055B62 != 0) {
        *lines = (u16)(D_800E3724->unk6 / D_80055B62) + 1;
        *width = *width + *lines;
    }
}
