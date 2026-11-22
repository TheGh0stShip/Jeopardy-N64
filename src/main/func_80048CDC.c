typedef unsigned char u8; typedef signed char s8; typedef unsigned short u16; typedef int s32;
typedef struct { u8 unk_0; u8 unk_1; u8 unk_2; u8 unk_3; u16 unk_4; s8 unk_6; s8 unk_7; } Src;
typedef struct { u16 unk_0; s8 unk_2; s8 unk_3; u8 unk_4; } Dst;
extern Src D_800D3160[];
extern u8 D_800D31A1;

void func_80048CDC(Dst *out)
{
    Src *p;
    Src s;
    s32 i;

    p = D_800D3160;
    for (i = 0; i < D_800D31A1; i++, p++, out++) {
        s = *p;
        out->unk_4 = (s.unk_2 & 0xC0) >> 4;
        if (out->unk_4 == 0) {
            out->unk_0 = s.unk_4;
            out->unk_2 = s.unk_6;
            out->unk_3 = s.unk_7;
        }
    }
}
