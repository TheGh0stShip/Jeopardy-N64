#include "n64dk_lift.h"

s32 osSetIntMask();
void func_80048BC8(void *arg0, void *arg1)
{
  s32 temp_a0_14;
  temp_a0_14 = osSetIntMask(1);
  *((s32 *) (((s8 *) arg1) + 0x10)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x20)));
  *((void **) (((s8 *) arg1) + 0)) = (void *) (*((void **) (((s8 *) arg0) + 0)));
  *((void **) (((s8 *) arg0) + 0)) = arg1;
  osSetIntMask(temp_a0_14, arg1, arg0);
}

