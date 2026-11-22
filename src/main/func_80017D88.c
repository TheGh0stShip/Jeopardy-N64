typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct n64dk_r12 { s32 w[3]; };
struct n64dk_a800DE160 { char m0[0x36]; };
extern struct n64dk_a800DE160 D_800DE160[];
void func_80017CC8();
extern s32 D_80055C38;
extern char *D_80055DF8[];
extern s32 D_80055F18;
extern s32 D_80055F20;
extern s32 D_800560F8;
extern u32 D_800560FC;
extern s32 D_800D7908;
extern u32 D_800E3690;
extern s32 D_800E8F20[];
extern s32 D_800E8F68[];
s32 func_80005EA4();
s32 func_80006158();
s32 func_800192F8();
s32 func_80027C4C();
s32 func_8002DD60();
s32 func_80035760();
s32 func_80035E48();
s32 func_800494AC();

struct n64dk_r12 func_80017D88(s32 arg1) {
    struct n64dk_r12 ret;
    u32 msg;
    s32 pad;
    u32 i;

    while ((msg = func_80035E48(arg1)) & 0xFFFF) {
        switch (msg & 0xFFFF) {
        case 8:
            D_800D7908 = 0;
            D_800560F8 = 28;
            D_80055C38 = func_80006158(66);
            for (i = 0; i < 18; i++) {
                func_800494AC(D_800DE160[i].m0, D_80055DF8[D_800E3690++]);
                D_800E8F20[i] = 25;
                D_800E8F68[i] = i * 14 + 255;
            }
            D_800E3690 = i;
            break;
        case 50:
            D_800560FC = 0;
            D_800560F8 = 31;
            func_80027C4C(D_80055C38, 1200);
            ret.w[1] = 2;
            ret.w[0] = -1;
            return ret;
        case 51:
            func_80005EA4(38);
            func_80035760(func_80017CC8, 0x7000000);
            func_800192F8(300, 0, 1);
            D_80055F20 = 1;
            ret.w[1] = 2;
            ret.w[0] = -1;
            return ret;
            break;
        case 11:
            if (D_80055F20 == 1) {
                D_800560FC = 0;
                D_800560F8 = 33;
                func_80035760(func_80017CC8, 0x7000000);
                ret.w[1] = 2;
                ret.w[0] = -1;
                return ret;
            }
            break;
        }
    }
    D_80055F18++;
    if (D_80055F18 == 1260) {
        func_8002DD60(1, 50);
    }
    if (D_80055F18 == 1265) {
        ret.w[1] = 2;
        ret.w[0] = -1;
        return ret;
    }
    if (D_800E3690 >= 70) {
        D_800560FC += 2;
    }
    if (D_800560FC >= 256) {
        D_800560FC = 255;
    }
    for (i = 0; i < 18; i++) {
        D_800E8F68[i] = D_800E8F68[i] - 1;
        if (D_800E8F68[i] < 3) {
            D_800E8F68[i] = 255;
            D_800DE160[i].m0[0] = 0;
            if (D_800E3690 < 72) {
                func_800494AC(D_800DE160[i].m0, D_80055DF8[D_800E3690]);
            } else {
                D_800DE160[i].m0[0] = 0;
            }
            D_800E3690++;
        }
    }
    ret.w[1] = 1;
    ret.w[0] = 0;
    return ret;
}
