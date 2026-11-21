#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_8003CE28_arg1;
struct Struct_func_8003CC48_arg0_at_14;
struct Struct_func_8003CE28_arg1 {   /* provisional: 2 field(s) from 2 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
};
struct Struct_func_8003CC48_arg0_at_14 {   /* provisional: 18 field(s) from 28 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ s32 unk_C;
    /* 0x10 */ struct Struct_func_8003CE28_arg1 *unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 unk_1C;
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ s32 unk_2C;
    /* 0x30 */ s32 unk_30;
    /* 0x34 */ s32 unk_34;
    /* 0x38 */ s32 unk_38;
    /* 0x3C */ s32 unk_3C;
    /* 0x40 */ s32 unk_40;
    /* 0x44 */ s32 unk_44;
};
void func_80042A34(struct Struct_func_8003CC48_arg0_at_14 *, s32, s32);

M2C_UNK alLink(); /* extern */

void func_80042A34(struct Struct_func_8003CC48_arg0_at_14 *arg0, s32 arg1, s32 arg2) {
    s32 var_s0_19;
    s32 var_s1_20;

    arg0->unk_10 = NULL;
    arg0->unk_8 = 0;
    arg0->unk_C = 0;
    arg0->unk_0 = 0;
    arg0->unk_4 = 0;
    var_s0_19 = 0;
    if (arg2 > 0) {
        var_s1_20 = arg1;
        do {
            alLink(var_s1_20, arg0);
            var_s0_19 += 1;
            var_s1_20 += 0x1C;
        } while (var_s0_19 != arg2);
    }
}
