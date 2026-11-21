#include "n64dk_lift.h"

s32 __osSpDeviceBusy();                             /* extern */
s32 __osSpRawStartDma(); /* extern */
s32 __osSpSetPc();                           /* extern */
void *func_8004BA98();                        /* extern */
M2C_UNK func_8004C4E8();                     /* extern */
M2C_UNK osWritebackDCache();         /* extern */
struct Fields_var_sp1C
{
  char pad_0[0x4];
  s32 unk_4;
  void *unk_8;
  s32 unk_C;
  s32 unk_10;
  char pad_14[0x4];
  s32 unk_18;
  s32 unk_1C;
  char pad_20[0x18];
  s32 unk_38;
  s32 unk_3C;
};
struct Fields_var_arg0
{
  char pad_0[0x4];
  s32 unk_4;
  char pad_8[0x30];
  s32 unk_38;
};

void func_8004BBB4(struct Fields_var_arg0 *arg0)
{
  struct Fields_var_sp1C *sp1C;
  sp1C = func_8004BA98(arg0);
  if (sp1C->unk_4 & 1)
  {
    sp1C->unk_18 = (s32) sp1C->unk_38;
    sp1C->unk_1C = (s32) sp1C->unk_3C;
    arg0->unk_4 = (s32) (arg0->unk_4 & (~1));
    if (sp1C->unk_4 & 4)
    {
      sp1C->unk_10 = (s32) (*((s32 *) ((arg0->unk_38 + 0xBFC) | 0xA0000000)));
    }
  }
  osWritebackDCache(sp1C, 0x40);
  func_8004C4E8(0x2B00);
  while (__osSpSetPc(0x04001000) == (-1))
  {
  }

  while (__osSpRawStartDma(1, 0x04000FC0, sp1C, 0x40) == (-1))
  {
  }

  while (__osSpDeviceBusy())
  {
  }

  while (__osSpRawStartDma(1, 0x04001000, sp1C->unk_8, sp1C->unk_C) == (-1))
  {
  }

}


