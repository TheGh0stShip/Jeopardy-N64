#include "n64dk_lift.h"

extern void *D_80072328;
struct Fields_var_var_a0_0
{
  char pad_0[0x4];
  s32 unk_4;
};

s32 func_80047D28(void *arg0)
{
  struct Fields_var_var_a0_0 *var_a0_0;
  var_a0_0 = arg0;
  if (var_a0_0 == NULL)
  {
    var_a0_0 = D_80072328;
  }
  return var_a0_0->unk_4;
}


