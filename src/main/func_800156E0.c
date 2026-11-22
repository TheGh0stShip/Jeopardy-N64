typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { u32 w0; u32 w1; } Gfx;
struct n64dk_e8 { u8 b[8]; };

struct Win {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u8 pad_0A[0xE];
    u16 unk_18;
    u16 unk_1A;
    u16 unk_1C;
    u16 unk_1E;
    s16 unk_20;
    s16 unk_22;
};

extern s16 D_80055B60;
extern s16 D_80055B62;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E3724;
s32 func_80011A7C();
s32 func_80013AB0();
s32 func_800148DC();
s32 func_8001554C();

void func_800156E0(register s32 arg0) {
    u16 id;
    struct Win *p;
    s16 x0;
    s16 y0;
    s16 x1;
    s16 y1;
    s16 a;
    s16 b;
    u16 n;
    s16 y;
    s16 cnt;
    s16 last;
    s16 line;
    s16 state;
    s16 max;
    Gfx *g;

    id = arg0;
    g = (Gfx *)D_800E0F4C++;
    g->w0 = 0xFA000000;
    g->w1 = -1;
    D_80055B60 = 1;
    D_80055B62 = 0;
    p = (struct Win *)func_80011A7C(id);
    x0 = p->unk_00;
    y0 = p->unk_02;
    x1 = x0 + p->unk_04;
    y1 = y0 + p->unk_06;
    func_80013AB0(id, x0, y0, x1, y1);
    switch (p->unk_08 & 0x3000) {
    case 0:
        max = 25;
        break;
    case 0x1000:
        max = 50;
        break;
    case 0x2000:
        max = 100;
        break;
    case 0x3000:
        max = 500;
        break;
    }
    line = p->unk_1A;
    cnt = p->unk_1C;
    for (;;) {
        if (cnt >= 0) {
            break;
        }
        if (line == p->unk_18) {
            cnt = 0;
        } else {
            line--;
            if (line < 0) {
                line = max - 1;
            } else {
                a = -1;
                b = -1;
                y = -1;
                last = -1;
                n = func_800148DC(id, (u16)line, &last, &a, &b, &y, 0, 0);
                cnt += n;
            }
        }
    }
    p->unk_1A = line;
    p->unk_1C = cnt;
    y = p->unk_06;
    state = 0;
    for (;;) {
        if (!(y >= ((struct Win *)D_800E3724)->unk_06 && state == 0)) {
            break;
        }
        if (line == p->unk_1E) {
            if ((p->unk_08 & 0x300) == 0) {
                b = p->unk_20;
                a = -1;
            } else {
                b = -1;
                a = p->unk_20;
            }
            state = 1;
        } else {
            b = -1;
            a = -1;
        }
        n = func_800148DC(id, (u16)line, &cnt, &a, &b, &y, x0, (s16)(y1 - y));
        last = cnt;
        if (state == 1) {
            if ((cnt & 0xF000) == 0) {
                if (p->unk_22 > 0) {
                    p->unk_22--;
                    p->unk_1E++;
                    if (p->unk_1E >= max) {
                        p->unk_1E = 0;
                    }
                    if ((p->unk_08 & 0x300) == 0) {
                        p->unk_20 = b;
                    } else {
                        p->unk_20 = a;
                    }
                    if (p->unk_20 < 0) {
                        p->unk_20 = 0;
                    }
                    if (y >= ((struct Win *)D_800E3724)->unk_06) {
                        state = 0;
                    }
                    if (p->unk_08 & 0x8000) {
                        p->unk_1C++;
                    }
                } else {
                    if ((p->unk_08 & 0x300) == 0) {
                        p->unk_20 = p->unk_20 - b;
                    } else {
                        p->unk_20 = p->unk_20 - a;
                    }
                }
            } else {
                if ((cnt & 0xF000) == 0x3000) {
                    if (p->unk_08 & 0x8000) {
                        p->unk_1C++;
                    }
                }
            }
        }
        if ((s16)(cnt & 0xFFF) == 0) {
            if ((cnt & 0xF000) == 0x4000) {
                state = 2;
            } else {
                if (p->unk_1A == p->unk_1E) {
                    p->unk_1C--;
                    cnt = p->unk_1C;
                } else {
                    p->unk_1A++;
                    if (p->unk_1A >= max) {
                        p->unk_1A = 0;
                    }
                    p->unk_1C = p->unk_1C - n;
                    cnt = p->unk_1C;
                }
            }
        } else {
            cnt = 0;
        }
        line++;
        if (line >= max) {
            line = 0;
        }
    }
    if ((last & 0xF000) != 0x3000) {
        if (y < ((struct Win *)D_800E3724)->unk_06) {
            if (state == 1) {
                p->unk_08 |= 0x8000;
            }
        }
    } else {
        if ((p->unk_08 & 0x300) == 0x200) {
            if (state == 1) {
                p->unk_08 |= 0x8000;
            }
        }
    }
    if (p->unk_08 & 0x8000) {
        if (state == 0) {
            p->unk_1C++;
        }
    }
    func_8001554C(id);
    g = (Gfx *)D_800E0F4C++;
    g->w0 = 0xFA000000;
    g->w1 = -1;
    D_80055B60 = 1;
    D_80055B62 = 0;
}
