typedef unsigned char u8; typedef unsigned short u16; typedef signed int s32;
typedef struct { u8 pad[0x10]; u8 unk10, unk11, unk12, unk13, unk14, unk15, unk16, unk17; } Obj;
Obj *func_80011A7C();

void func_80012F64(u16 id, u8 a, u8 b, u8 c, u8 d, u8 e, u8 f, u8 g, u8 h) {
    Obj *o = func_80011A7C(id);
    o->unk14 = a;
    o->unk15 = b;
    o->unk16 = c;
    o->unk17 = d;
    o->unk10 = e;
    o->unk11 = f;
    o->unk12 = g;
    o->unk13 = h;
}
