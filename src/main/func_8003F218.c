#include "n64dk_lift.h"

M2C_UNK guMtxIdentF();                              /* extern */
struct Fields_var_arg0
{
  char pad_0[0x30];
  f32 unk_30;
  f32 unk_34;
  f32 unk_38;
};

void func_8003F218(struct Fields_var_arg0 *arg0, f32 arg1, f32 arg2, f32 arg3)
{
  guMtxIdentF();
  arg0->unk_30 = arg1;
  arg0->unk_34 = arg2;
  arg0->unk_38 = arg3;
}


