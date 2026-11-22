typedef signed char s8;
typedef unsigned char u8;
typedef signed int s32;

extern s32 D_8005607C;
extern s32 D_800560B8;
extern s32 D_800560F4;
extern s32 D_80059610;
extern s32 D_8005998C;
extern s8 D_800DE160[][54];
extern s32 D_800E90D0;
s32 func_8002807C();
s32 func_80028190();
s32 func_8003FDF8();

void func_8001A180(void) {
    s32 i;

    i = func_8003FDF8() % 100;
    if ((i < *(s32 *)((D_80059610 * 4) + (s32)&D_800560B8)) || (D_800560F4 == 1)) {
        func_80028190();
        D_8005607C = (s32)&D_800E90D0;
    } else {
        D_800560F4 = 1;
        D_8005607C = func_8002807C();
    }
    i = 0;
    while (*(u8 *)(D_8005607C + i) != 0) {
        D_800DE160[D_8005998C][i] = *(u8 *)(D_8005607C + i++);
    }
    D_800DE160[D_8005998C][i] = 0;
}
