#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
s32 func_8003FCE8(void);
void func_8003FD08(s32);

s32 __osDisableInt();                               /* extern */
extern struct { s32 v; } D_8007246C;

void func_8004DA38(s32 arg0)
{
  s32 sp1C;
  sp1C = __osDisableInt();
  M2C_FIELD(D_8007246C.v, s32 *, 4) = arg0;
  M2C_FIELD(D_8007246C.v, u16 *, 0) = (u16) (M2C_FIELD(D_8007246C.v, u16 *, 0) | 0x10);
  func_8003FD08(sp1C);
}


