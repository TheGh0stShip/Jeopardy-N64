#include "n64dk_lift.h"

s32 func_80018360();

void func_800184E4(void) {
    s32 sp10;

    for (sp10 = 0;;) {
        if ((u32)sp10 >= 3) {
            return;
        }
        func_80018360(sp10);
        sp10++;
    }
}
