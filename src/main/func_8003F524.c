#include "n64dk_lift.h"

s32 alHeapDBAlloc(); /* extern */
M2C_UNK func_80042AA8(); /* extern */
extern M2C_UNK alEnvmixerParam;
extern M2C_UNK alEnvmixerPull;
struct Fields_var_arg0
{
  char pad_0[0x14];
  s32 unk_14;
  s16 unk_18;
  s16 unk_1A;
  s16 unk_1C;
  s16 unk_1E;
  s16 unk_20;
  s16 unk_22;
  s16 unk_24;
  s16 unk_26;
  s16 unk_28;
  char pad_2A[0x4];
  s16 unk_2E;
  s32 unk_30;
  s32 unk_34;
  s32 unk_38;
  s32 unk_3C;
  s32 unk_40;
  s32 unk_44;
  s32 unk_48;
};

void func_8003F524(struct Fields_var_arg0 *arg0, s32 arg1)
{
  func_80042AA8(arg0, &alEnvmixerPull, &alEnvmixerParam, 4);
  arg0->unk_14 = alHeapDBAlloc(0, 0, arg1, 1, 0x50);
  arg0->unk_38 = 1;
  arg0->unk_48 = 0;
  arg0->unk_1A = 1;
  arg0->unk_28 = 1;
  arg0->unk_2E = 1;
  arg0->unk_1C = 1;
  arg0->unk_1E = 1;
  arg0->unk_20 = 0;
  arg0->unk_22 = 0;
  arg0->unk_26 = 1;
  arg0->unk_24 = 0;
  arg0->unk_30 = 0;
  arg0->unk_34 = 0;
  arg0->unk_18 = 0;
  arg0->unk_3C = 0;
  arg0->unk_40 = 0;
  arg0->unk_44 = 0;
}


