#include "n64dk_lift.h"

M2C_UNK func_80005EA4();                         /* extern */
M2C_UNK func_80035760();          /* extern */
extern s32 D_80058D50;
extern s32 D_80058D54;
extern M2C_UNK func_8002DBAC;

void func_8002DCF4(s32 arg0, s32 arg1) {
    func_80005EA4(arg0);
    func_80035760(&func_8002DBAC, 0x07000000);
    D_80058D50 = arg1;
    D_80058D54 = 0x20005;
}
