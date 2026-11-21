#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern u8 D_800D0540;
extern u8 D_800D0542;
s32 func_80039E20(void);

M2C_UNK func_80039E58();                         /* extern */
M2C_UNK func_80039E88();            /* extern */
M2C_UNK func_8003AD80();                            /* extern */

void func_8003A604(void) {
    s32 temp_s0_10;

    temp_s0_10 = func_80039E20();
    func_8003AD80();
    func_80039E88(0xB1FFFFF0, 0);
    func_80039E88(0xB1FFFFFC, 0);
    D_800D0540 = 1;
    D_800D0542 = 0xFF;
    func_80039E58(temp_s0_10);
}
