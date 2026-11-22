typedef signed short s16; typedef unsigned short u16; typedef signed int s32;

typedef struct {
    char unk_00[0x8];
    u16 unk_08;
    char unk_0A[0x2];
    s16 unk_0C;
    u16 unk_0E;
    char unk_10[0xE];
    u16 unk_1E;
    s16 unk_20;
} Obj;

extern u16 D_800E8F0C;
Obj *func_80011A7C(u16);
s16 func_800148DC(u16, u16, s16 *, s16 *, s16 *, s16 *, s32, s32);

void func_8001554C(u16 arg0) {
    Obj *p;
    s16 a, b, c, d;

    p = func_80011A7C(arg0);
    p->unk_0C -= D_800E8F0C;
    while (p->unk_0C < 0) {
        p->unk_0C += p->unk_0E;
        switch (p->unk_08 & 0x300) {
        case 0:
        case 0x100:
            p->unk_20++;
            break;
        case 0x200:
            a = -1;
            b = -1;
            c = -1;
            d = -1;
            p->unk_20 += func_800148DC(arg0, p->unk_1E, &a, &b, &c, &d, 0, 0);
            break;
        default:
            break;
        }
    }
}
