typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;

typedef struct {
    s32 unk_0;
    s32 unk_4;
    s32 unk_8;
} Struct_80032FCC;

extern s32 D_80058858;
extern s32 D_80059A08[][7];
extern u32 D_80059BA8;
extern u32 D_80059BAC[];
typedef struct {
    u8 pad[0x48];
    s32 unk_48;
} Struct_800E36A8;

extern Struct_800E36A8 *D_800E36A8[];

Struct_80032FCC func_80032FCC(s32 arg1) {
    Struct_80032FCC ret;
    u32 val;
    u32 row;
    u32 col;
    s32 unused0 = 0;
    s32 unused1 = 0;
    s32 unused2 = 1;

    val = D_80059BAC[D_80059BA8];
    row = val / 6;
    col = val - row * 6;
    D_800E36A8[row * 6 + col]->unk_48 = D_80059A08[D_80058858][0];
    if (D_80059BA8++ >= 31) {
        ret.unk_4 = 0;
    } else {
        ret.unk_4 = 1;
    }
    ret.unk_0 = 2;
    return ret;
}
