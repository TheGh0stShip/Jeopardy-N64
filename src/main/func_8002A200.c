#include "n64dk_lift.h"

extern s32 D_80058EF4;
extern s32 D_80058F00;
extern s32 D_800E3360;

s32 func_8002A200(s32 arg0) {
    if ((arg0 & 256) != 0) {
        D_80058F00++;
        if (D_80058F00 >= 3) {
            D_80058F00 = 0;
        }
    }
    if ((arg0 & 512) != 0) {
        D_80058F00--;
        if (D_80058F00 < 0) {
            D_80058F00 = 2;
        }
    }
    D_800E3360 = *(s32 *)((D_80058F00 * 4) + ((s32)&D_80058EF4));
    if ((arg0 & 0x8000) != 0) {
        return 1;
    }
    return 0;
}
