#include "n64dk_lift.h"

M2C_UNK func_80035760();          /* extern */
extern s32 D_80058D4C;
extern s32 D_80058DCC;
extern s32 D_80058DD0;
extern s32 D_80058DD4;
extern M2C_UNK func_80027B2C;

void func_80027C4C(s32 arg0, s32 arg1) {
    D_80058DD4 = arg0;
    D_80058DCC = D_80058D4C * 0x90A;
    D_80058DD0 = arg1;
    func_80035760(&func_80027B2C, 0x07000000);
}
