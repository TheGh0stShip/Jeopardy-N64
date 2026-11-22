typedef signed int s32; typedef unsigned int u32;
typedef struct { s32 unk_0; s32 unk_4; s32 unk_8; } Struct_80017CC8;
extern u32 D_800560FC;

Struct_80017CC8 func_80017CC8(s32 arg0) {
    Struct_80017CC8 s;

    D_800560FC += 5;
    if (D_800560FC > 0xFF) {
        D_800560FC = 0xFF;
        s.unk_4 = 0;
        s.unk_0 = 0;
        return s;
    }
    s.unk_4 = 1;
    s.unk_0 = 0;
    return s;
}
