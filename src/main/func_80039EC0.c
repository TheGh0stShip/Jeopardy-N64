#include "n64dk_lift.h"

s32 func_80039EC0(s32 *arg0) {
    if (*(volatile s32 *)0xA4600010 & 3) {
        do {

        } while (*(volatile s32 *)0xA4600010 & 3);
    }
    return *arg0;
}
