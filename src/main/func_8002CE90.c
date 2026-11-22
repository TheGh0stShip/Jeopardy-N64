typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct Result {
    s32 a;
    s32 b;
    s32 c;
} Result;

typedef u32 (*StateFunc)(u32);

extern s16 D_8004DFD2;
extern s32 D_80050490;
extern s32 D_80050704;
extern s32 D_80050890;
extern s32 D_80055C38;
extern s32 D_800560F8;
extern s32 D_800580C4;
extern s32 D_800580C8;
extern s32 D_800580DC[];
extern s32 D_80058120[];
extern s32 D_80058844;
extern s32 D_80058848;
extern s32 D_800590C8[][16];
extern s32 D_80059830[];
extern StateFunc D_80059864[];
extern s32 D_80059878;
extern s32 D_80059898[];
extern StateFunc D_800598AC;
extern s32 D_800598D8[];
extern u32 D_8005998C;
extern s32 D_80059998;
extern s32 D_800DDF98[];
extern s32 D_800E0DF0[];
extern s32 D_800E3310;
extern s32 D_800E3660[];

void func_800042B8(u32, s32);
void func_8000785C(s32);
void func_80008C40(s32);
void func_80009258(void);
void func_800184E4(void);
void func_80018AAC(void);
void func_80018F64(void);
void func_80027C4C(s32, s32);
u32 func_8002A2FC(u32);
void func_8002C268(void);
void func_8002C42C(void);
void func_8002C5F0(void);
void func_8002CBE0(void);
void func_8002CC58(void);
void func_8002DCF4(s32, s32);
void func_80035760(void (*)(void), s32);
void func_800359E8(s32);
s32 func_80035E48(s32);

Result func_8002CE90(s32 arg) {
    Result r;
    u32 msg;
    u32 ret;
    u32 i;
    s32 state;

    while ((msg = func_80035E48(arg)) & 0xFFFF) {
        switch (msg & 0xFFFF) {
        case 8:
            func_80008C40(0);
            D_8004DFD2 = 0;
            if (D_80059998 == 40) {
                func_8000785C(1);
                func_80009258();
                D_800560F8 = 11;
                D_800E3310 = D_800DDF98[0] - 1;
                D_800598AC = D_80059864[D_800560F8];
                D_80059878 = D_80059830[D_800560F8];
                D_80058848 = D_80059898[D_800560F8];
                D_80058844 = D_800598D8[D_800560F8];
                D_800580C4 = 0;
            } else {
                func_8002CBE0();
                for (i = 0; i < 6; i++) {
                    D_800E0DF0[i] = 1;
                }
                D_80058844 = 1;
                D_80058848 = 1;
                D_800580C4 = 0;
                D_800598AC = D_80059864[D_800560F8];
                D_80059878 = D_80059830[D_800560F8];
                func_800359E8(25);
            }
            break;
        case 6:
            if (D_800580C8 == 0) {
                ret = D_800598AC(msg >> 16);
                switch (ret) {
                case 0:
                    if (D_80055C38 != 999) {
                        func_80027C4C(D_80055C38, 2400);
                    }
                    D_80055C38 = 999;
                    D_80050704 = 2;
                    D_80050490 = 0;
                    func_8000785C(1);
                    D_80050890 = 0;
                    func_8002CC58();
                    for (i = 0; i < 3; i++) {
                        func_800042B8(i, D_800E3660[i]);
                    }
                    D_800560F8 = 99;
                    func_800359E8(7);
                    r.b = 0;
                    r.a = 0;
                    return r;
                    break;
                case 1:
                    D_800580C8 = 7;
                    break;
                case 2:
                    D_800560F8 = 99;
                    func_80035760(func_8002C268, 0x7000000);
                    r.b = 0;
                    r.a = 0;
                    return r;
                    break;
                case 3:
                    D_800560F8 = 99;
                    func_80035760(func_8002C42C, 0x7000000);
                    r.b = 0;
                    r.a = 0;
                    return r;
                    break;
                case 4:
                    func_80008C40(0);
                    D_800560F8 = 6;
                    D_800580C4 = 0;
                    D_80058848 = D_80059898[D_800560F8];
                    D_80058844 = D_800598D8[D_800560F8];
                    D_800598AC = D_80059864[D_800560F8];
                    D_80059878 = D_80059830[D_800560F8];
                    D_800E3310 = D_800DDF98[0] - 1;
                    break;
                case 5:
                    break;
                case 6:
                    for (i = 0; i < 6; i++) {
                        D_800E0DF0[i] = 1;
                    }
                    D_800560F8 = 13;
                    for (D_8005998C = 0; D_8005998C < 3;) {
                        if (D_800580DC[D_8005998C] == 0) {
                            break;
                        } else {
                            D_8005998C++;
                        }
                    }
                    if (D_8005998C < 3) {
                        D_800E3660[D_8005998C] = 0;
                        D_800E3310 = D_800DDF98[D_8005998C] - 1;
                        D_800580C4 = 0;
                        D_800598AC = D_80059864[D_800560F8];
                    } else {
                        D_800560F8 = 6;
                        D_800580C4 = 0;
                        D_80058848 = D_80059898[D_800560F8];
                        D_80058844 = D_800598D8[D_800560F8];
                        D_800598AC = D_80059864[D_800560F8];
                        D_80059878 = D_80059830[D_800560F8];
                    }
                    break;
                case 7:
                    D_800E0DF0[D_800E3660[D_8005998C]] = 0;
                    D_800560F8 = 27;
                    func_80035760(func_8002C5F0, 0x7000000);
                    D_800598AC = func_8002A2FC;
                    break;
                case 8:
                    for (i = 0; i < 3; i++) {
                        D_80058120[i] = 0;
                    }
                    func_800184E4();
                    func_80035760(func_80018F64, 0x7000000);
                    func_80035760(func_80018AAC, 0x7000000);
                    func_8000785C(1);
                    D_800560F8 = 99;
                    func_800359E8(7);
                    r.b = 0;
                    r.a = 0;
                    return r;
                    break;
                case 9:
                    for (i = 0; i < 3; i++) {
                        D_80058120[i] = 0;
                    }
                    func_800184E4();
                    func_80035760(func_80018F64, 0x7000000);
                    func_80035760(func_80018AAC, 0x7000000);
                    func_80009258();
                    D_800560F8 = 6;
                    D_800580C4 = 0;
                    D_80058848 = D_80059898[D_800560F8];
                    D_80058844 = D_800598D8[D_800560F8];
                    D_800598AC = D_80059864[D_800560F8];
                    D_80059878 = D_80059830[D_800560F8];
                    break;
                case 10:
                    D_800560F8 = 32;
                    D_80059998 = 45;
                    func_8002DCF4(63, 4);
                    r.b = 0;
                    r.a = 0;
                    return r;
                    break;
                default:
                    break;
                }
            }
            break;
        default:
            break;
        }
    }
    if (D_800580C8 != 0) {
        D_800580C8--;
        if (D_800580C8 == 0) {
            state = D_800560F8;
            D_800560F8 = D_800590C8[D_800580C4][state - 6];
            D_800598AC = D_80059864[D_800560F8];
            D_80059878 = D_80059830[D_800560F8];
            D_80058848 = D_80059898[D_800560F8];
            D_80058844 = D_800598D8[D_800560F8];
            D_800580C4 = 0;
        }
        r.b = 1;
        r.a = 0;
        return r;
    }
    r.b = 2;
    r.a = -1;
    return r;
}
