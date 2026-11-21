#include "n64dk_lift.h"

extern f64 D_80075A40;
extern f64 D_80075A48;
extern f64 D_80075A50;
extern f64 D_80075A58;
extern f64 D_80158768[][8];
f64 func_80092814();
f64 func_80092864();

void func_8008A028(void) {
    s32 sp10;
    s32 sp14;
    f64 sp18;

    for (sp10 = 0;;) {
        if (sp10 >= 8) {
            return;
        }
        sp18 = (sp10 == 0) ? func_80092814(D_80075A40) : D_80075A48;
        sp14 = 0;
        for (;;) {
            if (sp14 >= 8) {
                break;
            }
            D_80158768[sp10][sp14] = sp18 * ({ func_80092864(((((f64)sp10) * D_80075A50) * (((f64)sp14) + D_80075A58))); });
            sp14++;
        }
        sp10++;
    }
}
