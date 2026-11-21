#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
struct Struct_func_80042AA8_arg0;
struct Struct_func_80042AA8_arg0 {   /* provisional: 6 field(s) from 1 function(s) */
    /* 0x00 */ s32 unk_0;
    /* 0x04 */ s32 unk_4;
    /* 0x08 */ s32 unk_8;
    /* 0x0C */ u16 unk_C;
    /* 0x0E */ u16 unk_E;
    /* 0x10 */ s32 unk_10;
};
void func_80042AA8(struct Struct_func_80042AA8_arg0 *, s32, s32, s32);

extern M2C_UNK alAuxBusParam;
extern M2C_UNK alAuxBusPull;

void func_8003F3A0(struct Struct_func_80042AA8_arg0 *arg0, s32 arg1, s32 arg2) {
    func_80042AA8(arg0, (s32) &alAuxBusPull, (s32) &alAuxBusParam, 6);
    M2C_FIELD(arg0, s32 *, 0x14) = 0;
    M2C_FIELD(arg0, s32 *, 0x18) = arg2;
    M2C_FIELD(arg0, s32 *, 0x1C) = arg1;
}
