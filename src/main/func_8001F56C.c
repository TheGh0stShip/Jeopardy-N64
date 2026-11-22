/* kseg_assert.h (inlined) */
#ifndef KSEG_ASSERT_H
#define KSEG_ASSERT_H
/* debug trap: the original used an assembler-level break (code 1,7) when the check fails */
#define TRAP_UNLESS(cond) if (!(cond)) { __asm__("break 1,7"); }
#endif

/* end kseg_assert.h */
typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

extern u8 D_800D7710[][50];
extern s32 D_800E0E10[];
s32 func_80011B24();

s32 func_8001F56C(u8 *arg0) {
    s32 n;
    s32 i;
    s32 j;
    s32 sp24;
    s32 sp28;
    s32 sp2C;

    TRAP_UNLESS((u32)arg0 & 0x80000000)
    n = 0;
    i = 0;
    j = 0;
    for (;;) {
        if (arg0[i] == 0xD) {
            break;
        }
        D_800D7710[n][j] = arg0[i];
        if (arg0[i] == 0x7C) {
            D_800D7710[n][j] = 0;
            func_80011B24(D_800D7710[n], &D_800E0E10[n], &sp2C, &sp24, &sp24);
            j = 0;
            n++;
        } else {
            j++;
        }
        i++;
    }
    D_800D7710[n][j] = 0;
    func_80011B24(D_800D7710[n], &D_800E0E10[n], &sp2C, &sp24, &sp24);
    return ++n;
}
