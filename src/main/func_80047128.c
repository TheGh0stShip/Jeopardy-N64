#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_80047128_arg0;
struct Struct_func_80047128_arg1;
struct Struct_func_80047128_arg0 {   /* provisional: 3 field(s) from 1 function(s) */
    /* 0x00 */ char unk_0[0x8];
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ s32 unk_C;
    /* 0x10 */ char unk_10[0xA];
    /* 0x1A */ s16 unk_1A;
};
struct Struct_func_80047128_arg1 {   /* provisional: 3 field(s) from 1 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ char unk_8[0x4];
    /* 0x0C */ u16 unk_C;
};
void func_80047128(struct Struct_func_80047128_arg0 *, struct Struct_func_80047128_arg1 *);

void func_80047128(struct Struct_func_80047128_arg0 *arg0, struct Struct_func_80047128_arg1 *arg1) {
    arg1->unk_0 = arg0->unk_8;
    arg1->unk_C = (u16) arg0->unk_1A;
    arg1->unk_4 = arg0->unk_C;
}
