#include "n64dk_lift.h"

struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
s32 func_80091284();
s32 func_800923A8();

s32 func_80091194(s32 arg0, s32 arg1) {
    s32 sp10;

    sp10 = func_800923A8(arg0, 1, 4, ((struct gd_208_s32 *)arg1)->v);
    (*(s32 *)arg0) = *(s32 *)arg0;
    if (sp10 < 4) {
        ((struct gd_204_s32 *)arg1)->v = 1;
        return 1;
    }
    if (((*(s32 *)arg0) & -512) != 0) {
        (*(s32 *)arg0) = func_80091284(((struct gd_208_s32 *)arg1)->v);
        if ((*(s32 *)arg0) == -1) {
            ((struct gd_204_s32 *)arg1)->v = 1;
            return 0;
        }
    }
    return 0;
}
