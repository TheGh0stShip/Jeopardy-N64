#include "n64dk_lift.h"

void func_8004583C(void *arg0, s32 arg1) {
    s32 temp_v0_6;

    temp_v0_6 = arg1 * 0x10;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 6) = 0;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 0xA) = 0;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 7) = 0x40;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 9) = 0x7F;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 8) = 5;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s8 *, 0xB) = 0;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), s16 *, 4) = 0xC8;
    M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x60) + temp_v0_6), f32 *, 0xC) = 1.0f;
}
