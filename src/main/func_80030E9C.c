#include "n64dk_lift.h"

M2C_UNK func_80021B10(); /* extern */
M2C_UNK *func_80024A0C();                           /* extern */
M2C_UNK func_80026BEC();          /* extern */
M2C_UNK func_80028190();                            /* extern */
M2C_UNK func_800359E8();                     /* extern */
M2C_UNK sprintf(); /* extern */
extern M2C_UNK D_800017FC;
extern M2C_UNK D_80001804;
extern M2C_UNK D_80001828;
extern s32 D_80059608;
extern M2C_UNK D_800DE548;
extern M2C_UNK D_800DE5D8;
extern u8 D_800DEFE0;
extern u8 D_800E90D0;

void func_80030E9C(void) {
    func_80028190();
    if (D_80059608 == 0) {
        sprintf(&D_800DE5D8, &D_800017FC, func_80024A0C(), &D_800E90D0);
        func_80026BEC(&D_800DE5D8, 0x100);
        if (D_800DEFE0 != 0) {
            sprintf(&D_800DE5D8, &D_80001804, &D_800DE548, &D_800DEFE0);
        } else {
            sprintf(&D_800DE5D8, &D_80001828, &D_800DE548);
        }
        func_80021B10(&D_800DE5D8, 0x14, 0xAA, 0x118, 0x32);
        return;
    }
    func_800359E8(5);
}
