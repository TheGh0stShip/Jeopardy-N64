typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32;

typedef struct { u32 w0; u32 w1; } Gfx;
struct Obj80011A7C {
    u8 pad0[8];
    u16 unk_08;
    u8 pad0A[6];
    u8 unk_10[4];
    u8 unk_14[4];
};

extern Gfx *D_800E0F4C;
extern Gfx D_01094318[];
extern Gfx D_010942B8[];
extern s16 D_80055B60;
struct Obj80011A7C *func_80011A7C(u16);
void func_80011AD8(s32);
void func_80013980(u16);
void func_80013920(s16, s16, s16, s16, s32, s32, s32, s32);

void func_80013AB0(register s32 arg0, register s32 arg1, register s32 arg2, register s32 arg3, register s32 arg4) {
    u16 id;
    s16 x0;
    s16 y0;
    s16 x1;
    s16 y1;
    u16 flags;
    struct Obj80011A7C *p;
    Gfx *g;

    id = arg0;
    x0 = arg1;
    y0 = arg2;
    x1 = arg3;
    y1 = arg4;
    p = func_80011A7C(id);
    flags = p->unk_08;
    if (flags & 1) {
        g = D_800E0F4C++;
        g->w0 = 0x06000000;
        g->w1 = (u32)D_01094318;
        func_80013980(flags);
        g = D_800E0F4C++;
        g->w0 = 0xFA000000;
        g->w1 = (p->unk_14[0] << 24) | (p->unk_14[1] << 16) | (p->unk_14[2] << 8) | p->unk_14[3];
        g = D_800E0F4C++;
        g->w0 = 0xF6000000 | (((x1 > 0 ? x1 : 0) & 0x3FF) << 14) | (((y1 > 0 ? y1 : 0) & 0x3FF) << 2);
        g->w1 = (((x0 > 0 ? x0 : 0) & 0x3FF) << 14) | (((y0 > 0 ? y0 : 0) & 0x3FF) << 2);
        switch (flags & 7) {
        case 2:
        case 3:
            func_80013920(x0 - 4, y0 - 4, x1 + 4, y1 + 4, 9, 10, 3, 10);
            func_80013920(x0 - 3, y0 - 3, x1 + 3, y1 + 3, 20, 10, 8, 10);
            func_80013920(x0 - 2, y0 - 2, x1 + 2, y1 + 2, 0, 10, 0, 10);
        case 1:
            func_80013920(x0 - 1, y0 - 1, x1 + 1, y1 + 1, 15, 10, 5, 10);
            break;
        case 0:
        default:
            break;
        }
    }
    if (flags & 0x400) {
        g = D_800E0F4C++;
        g->w0 = 0xED000000 | (((s32)(x0 * 4.0f) & 0xFFF) << 12) | ((s32)(y0 * 4.0f) & 0xFFF);
        g->w1 = (((s32)(x1 * 4.0f) & 0xFFF) << 12) | ((s32)(y1 * 4.0f) & 0xFFF);
    }
    g = D_800E0F4C++;
    g->w0 = 0x06000000;
    g->w1 = (u32)D_010942B8;
    func_80013980(flags);
    g = D_800E0F4C++;
    g->w0 = 0xFA000000;
    g->w1 = (p->unk_10[0] << 24) | (p->unk_10[1] << 16) | (p->unk_10[2] << 8) | p->unk_10[3];
    func_80011AD8(0);
    D_80055B60 = 1;
}
