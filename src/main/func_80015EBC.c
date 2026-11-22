typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct Entry80015EBC {
    u16 unk_00;
    u16 unk_02[7];
};
struct Obj80015EBC {
    u8 pad_00[0x8];
    u16 unk_08;
    u8 pad_0A[0xE];
    u16 unk_18;
    u8 pad_1A[0x8];
    u16 unk_22;
    u16 unk_24;
    u8 pad_26[2];
    struct Entry80015EBC *unk_28;
};
struct Work80015EBC {
    u16 unk_00;
    u16 unk_02;
    struct Obj80015EBC *unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    s32 unk_18[4];
};
extern s32 D_800DE540;
extern u16 D_800E333E;
extern s16 D_800E3B34;
struct Obj80015EBC *func_80011A7C();
s32 func_80011AD8();
u16 func_80014090();
s32 func_80014854();

void func_80015EBC(register s32 arg0, register s32 arg1, s32 arg2, s32 arg3) {
    struct Work80015EBC w;

    w.unk_00 = arg0;
    w.unk_02 = arg1;
    w.unk_04 = func_80011A7C(w.unk_00);
    w.unk_0A = w.unk_04->unk_24;
    switch ((u16)(w.unk_04->unk_08 & 0x3000)) {
    case 0:
        w.unk_14 = 25;
        break;
    case 0x1000:
        w.unk_14 = 50;
        break;
    case 0x2000:
        w.unk_14 = 100;
        break;
    case 0x3000:
        w.unk_14 = 500;
        break;
    }
    w.unk_04->unk_24++;
    if (w.unk_04->unk_24 >= w.unk_14) {
        w.unk_04->unk_24 = 0;
    }
    if (w.unk_04->unk_24 == w.unk_04->unk_18) {
        w.unk_04->unk_18++;
        if (w.unk_04->unk_18 >= w.unk_14) {
            w.unk_04->unk_18 = 0;
        }
    }
    w.unk_04->unk_22++;
    w.unk_04->unk_28[w.unk_0A].unk_00 = w.unk_02;
    D_800DE540 = func_80014854(w.unk_02);
    D_800E3B34 = 0x7FFF;
    func_80011AD8(0);
    w.unk_0C = 0;
    w.unk_0E = 0;
    for (;;) {
        w.unk_12 = 0;
        w.unk_08 = func_80014090();
        switch (w.unk_08) {
        case 0x8000:
            if (w.unk_0E != 0) {
                w.unk_0E--;
                D_800DE540 = w.unk_18[w.unk_0E];
                w.unk_08 = 0;
            }
            break;
        case 0x8010:
            w.unk_12 = 1;
            break;
        case 0x8011:
            w.unk_12 = 1;
            break;
        case 0x8012:
            w.unk_12 = 1;
            break;
        case 0x8013:
            w.unk_12 = 1;
            break;
        case 0x8014:
            w.unk_12 = 1;
            break;
        case 0x8015:
            w.unk_12 = 1;
            break;
        case 0x8016:
            w.unk_12 = 1;
            break;
        case 0x8017:
            w.unk_12 = 1;
            break;
        case 0x8018:
            w.unk_10 = D_800E333E;
            w.unk_12 = 1;
            break;
        case 0x8019:
            w.unk_10 = 0;
            w.unk_12 = 1;
            break;
        }
        if (w.unk_12 == 1) {
            w.unk_04->unk_28[w.unk_0A].unk_02[w.unk_0C] = w.unk_10;
            w.unk_0C++;
            w.unk_18[w.unk_0E] = D_800DE540;
            w.unk_0E++;
            D_800DE540 = func_80014854(w.unk_10);
        }
        if (w.unk_0C >= 7) {
            w.unk_0C = 6;
        }
        if (w.unk_08 == 0x8000) {
            break;
        }
    }
}
