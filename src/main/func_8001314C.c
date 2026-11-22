typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct {
    u16 unk0;
    u16 unk2;
} Sub10;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s16 unk18;
    /* 0x1A */ s16 unk1A;
    /* 0x1C */ s16 unk1C;
    /* 0x1E */ s16 unk1E;
    /* 0x20 */ s16 unk20;
    /* 0x22 */ s16 unk22;
    /* 0x24 */ s16 unk24;
    /* 0x26 */ s16 unk26;
    /* 0x28 */ u16 *unk28;
} Entry; /* size 0x2C */

typedef struct {
    u16 unk0;
    u16 unk2;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} Cell; /* size 0x10 */

extern Entry D_80055B94[];
extern u16 D_80055C1A;
extern Cell D_800D4470[];
void func_80013090();
void func_80012F64();

u16 func_8001314C(register s32 arg0, register s32 arg1, register s32 arg2, register s32 arg3, register s32 arg4) {
    u16 sp28;
    s16 sp2A;
    s16 sp2C;
    s16 sp2E;
    s16 sp30;
    Entry *e;
    s32 i;
    s32 j;
    s32 n;

    sp28 = arg0;
    sp2A = arg1;
    sp2C = arg2;
    sp2E = arg3;
    sp30 = arg4;
    for (i = 0; i < 3; i++) {
        e = &D_80055B94[i];
        if (e->unk8 == 0xFFFF) {
            e->unk8 = sp28;
            e->unkC = 6;
            e->unkE = 6;
            e->unk22 = -1;
            e->unk24 = 0;
            e->unk20 = 1;
            e->unk1E = 0;
            e->unk1A = 0;
            e->unk1C = 0;
            e->unk18 = 0;
            switch ((u16)(sp28 & 0x3000)) {
            case 0:
                n = 25;
                break;
            case 0x1000:
                n = 50;
                break;
            case 0x2000:
                n = 100;
                break;
            case 0x3000:
                n = 500;
                break;
            }
            e->unk28 = &D_800D4470[D_80055C1A].unk0;
            D_80055C1A += (u16)n;
            if (D_80055C1A > 800) {
            } else {
                for (j = 0; j < n; j++) {
                    e->unk28[j * 8] = 0xFFFF;
                }
            }
            func_80013090((u16)i, sp2A, sp2C, sp2E, sp30);
            func_80012F64((u16)i, 16, 16, 16, 0xC0, 0xFF, 0xFF, 0xFF, 0xC0);
            return i;
        }
    }
}
