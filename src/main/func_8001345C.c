typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct Entry {
    u16 unk_00;
    u16 unk_02[7];
};

struct Obj {
    u8 pad_00[8];
    u16 unk_08;
    u8 pad_0A[0x1E];
    struct Entry *unk_28;
};

struct Work {
    u16 id;
    u16 pad_02[3];
    u16 order[4];
    u16 i;
    u16 j;
    u16 t;
    u16 n;
    u16 cnt;
    struct Entry *src;
    struct Entry *dst;
};

struct Obj *func_80011A7C();

void func_8001345C(register s32 arg0) {
    struct Work w;

    w.id = arg0;
    if (func_80011A7C(w.id)->unk_08 == 0xFFFF) {
        return;
    }
    w.n = 0;
    for (w.i = 0; w.i < 3; w.i++) {
        if (func_80011A7C(w.i)->unk_08 != 0xFFFF) {
            w.order[w.n] = w.i;
            w.n++;
        }
    }
    for (w.i = 0; w.i < w.n - 1; w.i++) {
        for (w.j = w.i + 1; w.j < w.n; w.j++) {
            if (func_80011A7C(w.j)->unk_28 < func_80011A7C(w.i)->unk_28) {
                w.t = w.order[w.i];
                w.order[w.i] = w.order[w.j];
                w.order[w.j] = w.t;
            }
        }
    }
    w.i = 0;
    while (w.order[w.i] != w.id) {
        w.i++;
    }
    w.dst = func_80011A7C(w.i)->unk_28;
    for (w.i++; w.i < w.n; w.i++) {
        w.src = func_80011A7C(w.i)->unk_28;
        switch (func_80011A7C(w.i)->unk_08 & 0x3000) {
        case 0:
            w.cnt = 25;
            break;
        case 0x1000:
            w.cnt = 50;
            break;
        case 0x2000:
            w.cnt = 100;
            break;
        case 0x3000:
            w.cnt = 500;
            break;
        }
        for (w.j = 0; w.j < w.cnt; w.j++) {
            w.dst[w.j].unk_00 = w.src[w.j].unk_00;
            for (w.t = 0; w.t < 7; w.t++) {
                w.dst[w.j].unk_02[w.t] = w.src[w.j].unk_02[w.t];
            }
        }
        func_80011A7C(w.i)->unk_28 = w.dst;
        w.dst += w.cnt;
    }
    func_80011A7C(w.id)->unk_08 = 0xFFFF;
}
