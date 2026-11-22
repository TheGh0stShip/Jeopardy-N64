typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct {
    u16 button;
    s8 stick_x;
    s8 stick_y;
    u8 errno;
} Pad;

extern u8 D_8004DFD0;
extern void (*D_8004DFE4)(void);
extern u16 D_800D7910[];
extern u16 D_800DE638[];
extern u16 D_800DE680[];
extern u16 D_800E3350[];
extern Pad D_800E3600[];
extern s32 D_800E3758;
extern u16 D_800E90B0[];
extern Pad *D_800E90B8;
extern u16 D_80156ED0[];
void osContGetReadData(Pad *);

void func_80008C88(void) {
    Pad *p;
    u16 i;
    u16 unused1;
    u16 unused2;
    u16 unused3;
    u16 unused4;
    s16 flag;

    flag = 1;
    osContGetReadData(D_800E90B8);
    for (i = 0; i < 4; i++) {
        if ((D_8004DFD0 >> i) & 1) {
            p = &D_800E3600[i];
            D_800DE638[i] = p->button;
            D_800E3600[i] = D_800E90B8[i];
            D_800DE680[i] = p->button;
            D_800E90B0[i] = D_800DE638[i] ^ D_800DE680[i];
            D_800D7910[i] = D_800DE680[i] & D_800E90B0[i];
            D_80156ED0[i] = ~p->button;
            D_800E3350[i] = D_800DE680[i] & D_800DE638[i];
        }
    }
    D_8004DFE4();
    if (D_800E3758) {
        D_800E3758 = 0;
    }
}
