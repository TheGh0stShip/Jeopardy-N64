typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

extern u16 D_8004DFD2;
extern u16 D_8004DFD4[];
extern s32 D_80059DC4;
extern u16 D_800D7910[];
extern s32 D_800E3310;
extern u16 D_80156ED0[];
extern u16 D_800DE060[][16];
extern s16 D_800E6A00[][16];
s32 func_800359E8();

void func_800085D8(void) {
    u16 a;
    u16 b;
    u16 i;

    if (D_800D7910[D_800E3310] && D_80059DC4 == 0) {
        func_800359E8((D_800D7910[D_800E3310] << 16) | 6);
    }
    if ((u32)D_800E3310 < 4) {
        a = D_80156ED0[D_800E3310] & D_8004DFD2;
        b = D_800D7910[D_800E3310] & D_8004DFD2;
        D_8004DFD4[D_800E3310] = 0;
        for (i = 0; i < 16; i++) {
            if (a & 1) {
                D_800DE060[D_800E3310][i] = 0;
            }
            if (b & 1) {
                D_800DE060[D_800E3310][i] = 1;
                D_800E6A00[D_800E3310][i] = 30;
            }
            if (D_800DE060[D_800E3310][i]) {
                if (D_800E6A00[D_800E3310][i] > 0) {
                    D_800E6A00[D_800E3310][i]--;
                } else {
                    D_800E6A00[D_800E3310][i] = 5;
                    D_8004DFD4[D_800E3310] |= 1 << i;
                }
            }
            b >>= 1;
            a >>= 1;
        }
        if (D_8004DFD4[D_800E3310] && D_80059DC4 == 0) {
            func_800359E8((D_8004DFD4[D_800E3310] << 16) | 6);
        }
    }
}
