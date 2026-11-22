#include "n64dk_lift.h"

void func_80039E88(s32 *arg0, s32 arg1) {
    if (*(volatile s32 *)0xA4600010 & 3) {
        do {

        } while (*(volatile s32 *)0xA4600010 & 3);
    }
    *arg0 = arg1;
}
