#include "n64dk_lift.h"

M2C_UNK alSynNew();                                 /* extern */
extern struct { s32 v; } D_80071FF8;

void func_8003D534(s32 arg0)
{
  if (D_80071FF8.v == 0)
  {
    D_80071FF8.v = arg0;
    alSynNew();
  }
}


