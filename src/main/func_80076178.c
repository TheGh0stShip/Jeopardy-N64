#include "n64dk_lift.h"

struct gd_1E0_s32 { u8 pad[0x1E0]; s32 v; };
struct gd_1E4_s32 { u8 pad[0x1E4]; s32 v; };
struct gd_1E8_s32 { u8 pad[0x1E8]; s32 v; };
struct gd_1F4_s32 { u8 pad[0x1F4]; s32 v; };
struct gd_234_s32 { u8 pad[0x234]; s32 v; };
extern s32 D_80074EB8;
extern s32 D_80074EC0;
extern s32 D_8007537C;
s32 func_80008168();
s32 func_800904C8();
s32 func_800906C0();
s32 func_8009264C();

void func_80076178(s32 arg0) {
    s32 sp10;

    sp10 = func_800904C8(arg0);
    if (sp10 < 0) {
        if (D_80074EC0 == 0) {
            func_80008168(((s32)&D_8007537C));
        }
        func_8009264C(1);
    } else {
        if (sp10 == 0) {
            if (((struct gd_1E8_s32 *)arg0)->v <= 0) {
                ((struct gd_1F4_s32 *)arg0)->v = 1;
                if (D_80074EB8 != 0) {
                    func_800906C0(arg0);
                }
                return;
            }
        }
    }
    ((struct gd_234_s32 *)arg0)->v = (*(s32 *)((struct gd_1E4_s32 *)arg0)->v) << ((struct gd_1E0_s32 *)arg0)->v;
}
