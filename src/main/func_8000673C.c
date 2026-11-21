#include "n64dk_lift.h"

struct gd_E_s16 { u8 pad[0xE]; s16 v; };
extern s32 D_80098F30;

s32 func_8000673C(void) {
    return ((struct gd_E_s16 *)D_80098F30)->v;
}
