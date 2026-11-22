typedef signed char s8; typedef unsigned char u8; typedef signed int s32;

struct n64dk_a800DF030 { u8 m0; };
extern struct n64dk_a800DF030 D_800DF030[];
extern s32 D_80058D80;
extern s32 D_80058F00;
extern s32 D_8005998C;
extern s32 D_80059998;
extern s8 D_800DE160[][54];
extern s32 D_800E3C00;
s32 func_80005DF8();
s32 func_8000640C();
s32 func_800359E8();

void func_8002E030(void) {
    s32 sp10;

    sp10 = 0;
    if (D_80058F00 == 1) {
        for (;;) {
            if ((*(u8 *)(D_80058D80 + sp10)) == 0) {
                break;
            }
            D_800DE160[D_8005998C][sp10] = *(u8 *)((sp10++) + D_80058D80);
        }
    } else {
        for (;;) {
            if ((*(u8 *)(sp10 + ((s32)&D_800DF030))) == 95) {
                break;
            }
            D_800DE160[D_8005998C][sp10] = D_800DF030[sp10++].m0;
        }
    }
    D_800DE160[D_8005998C][sp10] = 0;
    if (func_80005DF8(D_800E3C00) == 0) {
        func_8000640C(D_800E3C00);
    }
    D_80059998 = 31;
    func_800359E8(26);
}
