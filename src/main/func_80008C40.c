#include "n64dk_lift.h"

/* Provisional declarations recovered from machine code by n64dk. Evidence, not truth. */
extern s32 D_8004DFE4;
extern s32 D_8004DFEC[];

void func_80008C40(s32 arg0) {
    D_8004DFE4 = D_8004DFEC[arg0];
}
