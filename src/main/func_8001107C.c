#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
extern s32 D_80000734;
extern s32 D_80000738;
extern s32 D_8000073C;
extern s32 D_80162F54;
s32 func_80007F38();
s32 func_80007FA8();
s32 func_80008168();
s32 func_8000ECD0();
s32 func_80010228();
s32 func_8001065C();
s32 func_80010C7C();

void func_8001107C(s32 arg0) {
    switch ((u32)(*(s32 *)D_80162F54)) {
    case 112:
        func_80010228(arg0);
        return;
    case 96:
        func_8000ECD0(arg0);
        return;
    case 64:
        switch (((struct gd_4_s32 *)D_80162F54)->v) {
        case 64:
            func_8001065C(arg0);
            break;
        case 96:
            func_80010C7C(arg0);
            break;
        }
        return;
    }
    func_80007FA8((*(s32 *)D_80162F54));
    func_80007F38(((s32)&D_80000734));
    func_80007FA8(((struct gd_4_s32 *)D_80162F54)->v);
    func_80007F38(((s32)&D_80000738));
    func_80008168(((s32)&D_8000073C));
}
