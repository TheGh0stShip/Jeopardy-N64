typedef signed char s8; typedef unsigned char u8; typedef short s16; typedef unsigned short u16;
typedef int s32; typedef unsigned int u32;
typedef struct { s32 w[3]; } Ret8001A330;
extern char D_80000F70[];
extern u8 D_800E6E38[];
extern char D_800DF030[];
extern u8 *D_8005607C;
extern u16 D_80056080[];
extern u16 D_8005608C[];
extern u16 *D_800E8F14;
extern u16 *D_800560A4[];
extern s32 D_80056064[];
extern s32 D_800560E8[];
extern s32 D_800580E8[];
extern s32 D_80058120[];
extern s32 D_80056060, D_800560F8, D_80058D5C, D_80058D88, D_80058F00, D_8005998C, D_80059998;
extern s32 D_800E375C, D_800E3B24, D_800E3B28;
void func_80027CD0();
void func_80005EA4();
void func_80019808();
void func_80035104();
void func_80035760();
void func_800359E8();
s32 func_8003FDF8();
void func_800494AC();

Ret8001A330 func_8001A330(s32 arg1) {
    Ret8001A330 ret;
    s32 unused[4]; /* dead locals in the original: frame is 0x40 */

    switch (D_80059998) {
    case 4:
    case 5:
        if (D_800580E8[D_80058D5C] == 0) {
            D_800560F8 = 3;
            func_80035104();
            D_80059998 = 24;
            D_800E8F14 = D_800560A4[func_8003FDF8() % 2];
            D_80056060 = 0;
        }
        break;
    case 20:
        if (D_800580E8[D_8005998C] != 0) {
            ret.w[1] = 1;
            ret.w[0] = (func_8003FDF8() % 7) + 2;
            return ret;
        }
        if (D_80058D88 == 0) {
            if (D_800E375C != 0) {
                D_800E375C = 0;
                ret.w[1] = 1;
                ret.w[0] = 30;
                return ret;
            }
        }
        if (D_8005607C != 0) {
            if (D_8005607C[D_80058D88] != 0) {
                D_800E375C = 1;
                func_80005EA4(16);
                D_800DF030[D_80058D88] = D_8005607C[D_80058D88++];
                D_800DF030[D_80058D88] = 95;
                if (D_80058F00 == 1) {
                    func_80035760(func_80027CD0, 0x7000000);
                }
            } else {
                D_80059998 = 21;
                D_80056060 = 0;
            }
        }
        break;
    case 21:
        if (D_80056080[D_80056060] != 0) {
            func_800359E8(((D_80056080[D_80056060++] << 16) | 6));
        }
        break;
    case 22:
        if (D_800580E8[D_8005998C] != 0) {
            ret.w[1] = 1;
            ret.w[0] = (func_8003FDF8() % 7) + 2;
            return ret;
        }
        if (D_80058D88 == 0) {
            if (D_800E3B24 < (D_80058120[D_8005998C] / 2)) {
                func_800494AC(D_800E6E38, D_80000F70, (D_80058120[D_8005998C] / 2));
            } else {
                func_800494AC(D_800E6E38, D_80000F70, D_800E3B28);
            }
        }
        if (D_800E6E38[D_80058D88] != 0) {
            func_80005EA4(16);
                D_800DF030[D_80058D88] = D_800E6E38[D_80058D88++];
            D_800DF030[D_80058D88] = 95;
        } else {
            D_80059998 = 23;
            D_80056060 = 0;
            ret.w[0] = (func_8003FDF8() % 5) + 2;
            return ret;
        }
        break;
    case 23:
        if (D_8005608C[D_80056060] != 0) {
            func_800359E8(((D_8005608C[D_80056060++] << 16) | 6));
        }
        break;
    case 24:
        if (D_800E8F14[D_80056060] != 0) {
            func_800359E8(((D_800E8F14[D_80056060++] << 16) | 6));
        } else {
            func_80019808();
        }
        ret.w[1] = 1;
        ret.w[0] = (func_8003FDF8() % 5) + D_800560E8[D_80056064[D_8005998C]];
        return ret;
        break;
    case 32:
        if (D_800580E8[D_8005998C] == 0) {
            func_800359E8(0x80000006);
        }
        break;
    case 31:
        if (D_800580E8[D_8005998C] == 0) {
            func_800359E8(0x80000006);
        }
        break;
    }
    ret.w[1] = 1;
    ret.w[0] = (func_8003FDF8() % 5) + 2;
    return ret;
}
