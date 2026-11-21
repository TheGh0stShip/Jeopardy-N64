#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_8003CC48_arg0;
struct Struct_func_8003CE28_arg1;
struct Struct_func_8003CC48_arg0 {   /* provisional: 23 field(s) from 28 function(s) */
    /* 0x00 */ u8 unk_0;   /* also accessed as 32-bit */
    /* 0x01 */ u8 unk_1;
    /* 0x02 */ char unk_2[0x2];
    /* 0x04 */ u16 unk_4;   /* also accessed as 32-bit */
    /* 0x06 */ char unk_6[0x2];
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ char unk_C[0x4];
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 unk_1C;
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ struct Struct_func_8003CE28_arg1 *unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ s32 unk_2C;
    /* 0x30 */ s32 unk_30;
    /* 0x34 */ s32 unk_34;
    /* 0x38 */ s32 unk_38;
    /* 0x3C */ s32 unk_3C;
    /* 0x40 */ s32 unk_40;
    /* 0x44 */ s32 unk_44;
    /* 0x48 */ s32 unk_48;
    /* 0x4C */ s32 unk_4C;
    /* 0x50 */ s32 unk_50;
    /* 0x54 */ s32 unk_54;
    /* 0x58 */ s32 unk_58;
};
struct Struct_func_8003CE28_arg1 {   /* provisional: 2 field(s) from 2 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
};
void func_8004C688(struct Struct_func_8003CC48_arg0 *, s16);

void func_8004C688(struct Struct_func_8003CC48_arg0 *arg0, s16 arg1) {
    arg0->unk_3C = (s32) arg1;
}
