#include "n64dk_lift.h"

M2C_UNK func_80042AA8(); /* extern */
extern M2C_UNK alMainBusParam;
extern M2C_UNK alMainBusPull;
struct Fields_var_arg0
{
  char pad_0[0x14];
  s32 unk_14;
  s32 unk_18;
  s32 unk_1C;
};

void func_8003F34C(struct Fields_var_arg0 *arg0, s32 arg1, s32 arg2)
{
  func_80042AA8(arg0, &alMainBusPull, &alMainBusParam, 7);
  arg0->unk_14 = 0;
  arg0->unk_18 = arg2;
  arg0->unk_1C = arg1;
}


