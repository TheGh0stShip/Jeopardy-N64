typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32;

typedef struct {
    /* 0x00 */ u8 unk_0[0xD];
    /* 0x0D */ u8 unk_D;
} Item;

typedef struct {
    /* 0x00 */ u8 unk_0[0x1C];
    /* 0x1C */ Item *unk_1C;
    /* 0x20 */ s16 unk_20;
    /* 0x22 */ s16 unk_22;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ u8 unk_2E;
    /* 0x2F */ u8 unk_2F;
} Entry;

typedef struct {
    /* 0x00 */ u8 unk_0[0x40];
    /* 0x40 */ Entry *unk_40;
    /* 0x44 */ s32 unk_44;
} Owner;

s32 func_8004C598(Owner *arg0, Item *arg1) {
    Entry *base = arg0->unk_40;
    s16 i;
    Entry *e;

    for (i = 0; i < arg0->unk_44; i++) {
        e = (Entry *)((u8 *)base + i * sizeof(Entry));
        if (e->unk_1C == 0) {
            e->unk_1C = arg1;
            e->unk_20 = 5;
            e->unk_28 = 0;
            e->unk_2E = 0x40;
            e->unk_2F = 0;
            e->unk_24 = 1.0f;
            e->unk_2C = arg1->unk_D * 0x7FFF / 127;
            return i;
        }
    }
    return -1;
}
