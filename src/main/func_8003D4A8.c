#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_8003CE28_arg1;
struct Struct_func_8003CE28_arg1 {   /* provisional: 2 field(s) from 2 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
};
void func_8003D4A8(struct Struct_func_8003CE28_arg1 *);

void func_8003D4A8(struct Struct_func_8003CE28_arg1 *arg0) {
    s32 temp_v0_10;
    s32 temp_v0_5;

    temp_v0_5 = arg0->unk_0;
    if (temp_v0_5 != 0) {
        M2C_FIELD(temp_v0_5, s32 *, 4) = (s32) arg0->unk_4;
    }
    temp_v0_10 = arg0->unk_4;
    if (temp_v0_10 != 0) {
        *(s32 *)temp_v0_10 = (s32) arg0->unk_0;
    }
}
