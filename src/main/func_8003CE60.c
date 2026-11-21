#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_8003CE28_arg1;
struct Struct_func_8003CC48_arg0_at_10;
struct Struct_func_8003CE28_arg1 {   /* provisional: 2 field(s) from 2 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
};
struct Struct_func_8003CC48_arg0_at_10 {   /* provisional: 19 field(s) from 28 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ s32 unk_C;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ struct Struct_func_8003CE28_arg1 *unk_14;
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
    /* 0x48 */ s32 unk_48;
};
void func_8003CE60(struct Struct_func_8003CC48_arg0_at_10 *);

M2C_UNK alLink(); /* extern */
M2C_UNK alUnlink(); /* extern */

void func_8003CE60(struct Struct_func_8003CC48_arg0_at_10 *arg0) {
    struct Struct_func_8003CE28_arg1 *var_s0_10;

    var_s0_10 = arg0->unk_14;
    if (var_s0_10 != NULL) {
        do {
            alUnlink(var_s0_10);
            alLink(var_s0_10, &arg0->unk_4);
            var_s0_10 = arg0->unk_14;
        } while (var_s0_10 != NULL);
    }
}
