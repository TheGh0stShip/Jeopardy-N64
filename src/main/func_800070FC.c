#include "n64dk_lift.h"

u32 func_8003BCD8();                                /* extern */
extern s32 D_8004DFCC;

void func_800070FC(s32 arg0) {
    u32 sp10;

    sp10 = func_8003BCD8() >> 2;
    if ((sp10 == 0) && (D_8004DFCC == 0)) {
        D_8004DFCC = 0;
    }
}
