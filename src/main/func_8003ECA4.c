#include "n64dk_lift.h"

s32 func_8003ECA4(void *arg0, u32 *arg1)
{
  s32 temp_v0_9;
  s32 var_a2_13;
  u32 temp_a1_92;
  u32 temp_t0_31;
  u32 temp_t0_51;
  u32 temp_t0_72;
  u32 var_v1_7;
  void *temp_a3_24;
  void *temp_a3_44;
  void *temp_a3_65;
  void *temp_a3_86;
  var_v1_7 = -1U;
  temp_v0_9 = *((s32 *) (((s8 *) arg0) + 0x10));
  if ((*((u32 *) (((s8 *) arg0) + 4))) == 0)
  {
    return 0;
  }
  var_a2_13 = 0;
  do
  {
    if ((((u32) (*((u32 *) (((s8 *) arg0) + 4)))) >> var_a2_13) & 1)
    {
      temp_a3_24 = (void *) (((u8 *) arg0) + (var_a2_13 * 4));
      if ((*((s32 *) (((s8 *) arg0) + 0x14))) != 0)
      {
        *((u32 *) (((s8 *) temp_a3_24) + 0xB8)) = (u32) ((*((u32 *) (((s8 *) temp_a3_24) + 0xB8))) - temp_v0_9);
      }
      temp_t0_31 = *((u32 *) (((s8 *) temp_a3_24) + 0xB8));
      if (temp_t0_31 < var_v1_7)
      {
        var_v1_7 = temp_t0_31;
      }
    }
    if (((*((u32 *) (((s8 *) arg0) + 4))) >> (var_a2_13 + 1)) & 1)
    {
      temp_a3_44 = (void *) (((u8 *) arg0) + (var_a2_13 * 4));
      if ((*((s32 *) (((s8 *) arg0) + 0x14))) != 0)
      {
        *((u32 *) (((s8 *) temp_a3_44) + 0xBC)) = (u32) ((*((u32 *) (((s8 *) temp_a3_44) + 0xBC))) - temp_v0_9);
      }
      temp_t0_51 = *((u32 *) (((s8 *) temp_a3_44) + 0xBC));
      if (temp_t0_51 < var_v1_7)
      {
        var_v1_7 = temp_t0_51;
      }
    }
    if (((*((u32 *) (((s8 *) arg0) + 4))) >> (var_a2_13 + 2)) & 1)
    {
      temp_a3_65 = (void *) (((u8 *) arg0) + (var_a2_13 * 4));
      if ((*((s32 *) (((s8 *) arg0) + 0x14))) != 0)
      {
        *((u32 *) (((s8 *) temp_a3_65) + 0xC0)) = (u32) ((*((u32 *) (((s8 *) temp_a3_65) + 0xC0))) - temp_v0_9);
      }
      temp_t0_72 = *((u32 *) (((s8 *) temp_a3_65) + 0xC0));
      if (temp_t0_72 < var_v1_7)
      {
        var_v1_7 = temp_t0_72;
      }
    }
    if (((*((u32 *) (((s8 *) arg0) + 4))) >> (var_a2_13 + 3)) & 1)
    {
      temp_a3_86 = (void *) (((u8 *) arg0) + (var_a2_13 * 4));
      if ((*((s32 *) (((s8 *) arg0) + 0x14))) != 0)
      {
        *((u32 *) (((s8 *) temp_a3_86) + 0xC4)) = (u32) ((*((u32 *) (((s8 *) temp_a3_86) + 0xC4))) - temp_v0_9);
      }
      temp_a1_92 = *((u32 *) (((s8 *) temp_a3_86) + 0xC4));
      if (temp_a1_92 < var_v1_7)
      {
        var_v1_7 = temp_a1_92;
      }
    }
    var_a2_13 += 4;
  }
  while (var_a2_13 != 0x10);
  *((s32 *) (((s8 *) arg0) + 0x14)) = 0;
  *arg1 = var_v1_7;
  return 1;
}

