#include "n64dk_lift.h"

M2C_UNK func_80042AA8(); /* extern */
extern M2C_UNK alSaveParam;
extern M2C_UNK alSavePull;
struct Fields_var_arg0
{
  char pad_0[0x14];
  s32 unk_14;
  s32 unk_18;
};

void func_8003F308(struct Fields_var_arg0 *arg0)
{
  func_80042AA8(arg0, &alSavePull, &alSaveParam, 3);
  arg0->unk_14 = 0;
  arg0->unk_18 = 1;
}


