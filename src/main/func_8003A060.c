#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
void func_8003A060(s32, u8);

void func_8003A060(s32 arg0, u8 arg1) {
    s32 temp_a0_9;
    s32 temp_a2_7;

    temp_a2_7 = (~arg0 & 3) * 8;
    temp_a0_9 = arg0 & ~3;
    *(s32 *)temp_a0_9 = (s32) ((*(s32 *)temp_a0_9 & ~(0xFF << temp_a2_7)) | ((arg1 & 0xFF) << temp_a2_7));
}
