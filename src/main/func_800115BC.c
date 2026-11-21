#include "n64dk_lift.h"

struct n64dk_a80050820 { s32 m0; u8 pad4[0x4]; s32 m8; };
extern struct n64dk_a80050820 D_80050820[];
s32 func_80007784();
s32 func_80036448();

s32 func_800115BC(s32 arg0) {
    s32 sp10;

    sp10 = func_80007784(((*(s32 *)D_80050820[arg0].m8) + 1));
    func_80036448(D_80050820[arg0].m0, sp10, ((*(s32 *)D_80050820[arg0].m8) + 1));
    return sp10;
}
