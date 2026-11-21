#include "n64dk_lift.h"

struct gd_2_s16 { u8 pad[0x2]; s16 v; };
extern s32 D_800E0DCC;

s32 func_80006774(void) {
    return ((struct gd_2_s16 *)D_800E0DCC)->v;
}
