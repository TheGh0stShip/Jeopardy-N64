#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_6C_s32 { u8 pad[0x6C]; s32 v; };
extern s32 func_8000BC74;
s32 func_8000B248();
s32 func_80027504();

void func_8000C1E0(s32 arg0) {
    s32 sp10;

    sp10 = func_80027504(((struct gd_4_s32 *)arg0)->v, ((s32)&func_8000BC74), 0x3000000);
    if (sp10 == 0) {
        return;
    }
    (*(s32 *)((struct gd_6C_s32 *)arg0)->v) = sp10;
    func_8000B248(sp10, 4);
}
