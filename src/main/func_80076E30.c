#include "n64dk_lift.h"

extern f64 D_80075838;
s32 func_80092904();

f64 func_80076E30(void) {
    s32 sp10;
    s32 sp14;

    func_80092904(((s32)&sp10), 0);
    return ((f64)sp10) + (((f64)sp14) / D_80075838);
}
