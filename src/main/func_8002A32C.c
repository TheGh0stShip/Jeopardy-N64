typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16; typedef signed int s32; typedef unsigned int u32;

extern s32 D_800560F8;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_80058844;
extern s32 D_80058848;
extern s32 D_80058F08[][16];
extern s32 *D_80059878;
s32 func_80005EA4();

s32 func_8002A32C(s32 arg0) {
    s32 old;

    if (D_800580C8 != 0) {
        return 5;
    }
    if (arg0 & 0x400) {
        func_80005EA4(16);
        D_80058848++;
        if (D_80058848 >= 3) {
            D_80058848 = 0;
        }
        for (;;) {
            if (D_80059878[D_80058848 * 3 + D_80058844] != 7) {
                break;
            }
            D_80058848++;
            if (D_80058848 >= 3) {
                D_80058848 = 0;
            }
        }
        D_800580C4 = D_80059878[D_80058848 * 3 + D_80058844];
    }
    if (arg0 & 0x800) {
        func_80005EA4(16);
        D_80058848--;
        if (D_80058848 < 0) {
            D_80058848 = 2;
        }
        for (;;) {
            if (D_80059878[D_80058848 * 3 + D_80058844] != 7) {
                break;
            }
            D_80058848--;
            if (D_80058848 < 0) {
                D_80058848 = 2;
            }
        }
        D_800580C4 = D_80059878[D_80058848 * 3 + D_80058844];
    }
    if (arg0 & 0x100) {
        func_80005EA4(16);
        old = D_80058844++;
        if (D_80058844 >= 3) {
            D_80058844 = 0;
        }
        if (D_80059878[D_80058848 * 3 + D_80058844] != 7) {
            D_800580C4 = D_80059878[D_80058848 * 3 + D_80058844];
        } else {
            D_80058844 = old;
        }
    }
    if (arg0 & 0x200) {
        func_80005EA4(16);
        old = D_80058844--;
        if (D_80058844 < 0) {
            D_80058844 = 2;
        }
        if (D_80059878[D_80058848 * 3 + D_80058844] != 7) {
            D_800580C4 = D_80059878[D_80058848 * 3 + D_80058844];
        } else {
            D_80058844 = old;
        }
    }
    if (arg0 & 0x8000) {
        if (D_80058F08[D_800580C4][D_800560F8 - 6] != 0) {
            func_80005EA4(7);
        }
        return D_80058F08[D_800580C4][D_800560F8 - 6];
    }
    if (arg0 & 0x4000) {
        func_80005EA4(6);
        return 4;
    }
    return 5;
}
