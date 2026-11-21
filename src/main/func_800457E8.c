#include "n64dk_lift.h"

void func_800457E8(void *arg0, void *arg1, s32 arg2) {
    s32 temp_v0_6;

    temp_v0_6 = arg2 * 0x10;
    *(s32 *)(M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6) = arg1;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), u8 *, 7) = (u8) M2C_FIELD(arg1, u8 *, 1);
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), u8 *, 9) = (u8) M2C_FIELD(arg1, u8 *, 0);
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), u8 *, 8) = (u8) M2C_FIELD(arg1, u8 *, 2);
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s16 *, 4) = (s16) M2C_FIELD(arg1, s16 *, 0xC);
}
