typedef signed short s16; typedef signed int s32;
typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8[16];
    s32 unk28;
    s32 unk2C;
} Unk8003F5C8;

void func_8003F5C8(Unk8003F5C8 *arg0) {
    s32 x;
    s16 v;
    s32 i;
    double d, f;

    x = arg0->unk0 << 14;
    v = x >> 15;
    arg0->unk2 = 0x4000 - v;
    arg0->unk2C = 1;
    for (i = 0; i < 8; i++) {
        arg0->unk8[i] = 0;
    }
    arg0->unk8[i] = v;
    f = v / 16384.0;
    d = f;
    for (i++; i < 16; i++) {
        d *= f;
        arg0->unk8[i] = d * 16384.0;
    }
}
