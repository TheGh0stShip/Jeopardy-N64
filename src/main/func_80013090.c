typedef unsigned short u16;
typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} Unk80013090;

extern Unk80013090 *func_80011A7C();

void func_80013090(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    Unk80013090 *p;

    p = func_80011A7C(arg0);
    p->unk0 = arg1;
    p->unk2 = arg2;
    p->unk4 = arg3;
    p->unk6 = arg4;
}
