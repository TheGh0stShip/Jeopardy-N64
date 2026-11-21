#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_8003D568_arg0;
struct Struct_func_8003D568_arg0 {   /* provisional: 4 field(s) from 1 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ s32 unk_C;
};
void func_8003D568(struct Struct_func_8003D568_arg0 *, s32, s32);

void func_8003D568(struct Struct_func_8003D568_arg0 *arg0, s32 arg1, s32 arg2) {
    s32 temp_v0_7;

    temp_v0_7 = 0x10 - (arg1 & 0xF);
    if (temp_v0_7 != 0x10) {
        arg0->unk_0 = arg1 + temp_v0_7;
    } else {
        arg0->unk_0 = arg1;
    }
    arg0->unk_8 = arg2;
    arg0->unk_C = 0;
    arg0->unk_4 = arg0->unk_0;
}
