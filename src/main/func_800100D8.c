#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
extern s32 D_80000734;
extern s32 D_80000738;
extern s32 D_8000073C;
extern s32 D_80050490;
extern s32 D_800E3330;
extern s32 D_80162F54;
s32 func_80007F38();
s32 func_80007FA8();
s32 func_80008168();
s32 func_8000D3C8();
s32 func_8000DA78();
s32 func_8000EF78();

void func_800100D8(s32 arg0, s32 arg1) {
    if (D_80050490 == 2) {
        return;
    }
    switch (D_800E3330) {
    case 0:
        switch ((u32)(*(s32 *)D_80162F54)) {
        case 112:
            func_8000EF78(arg0, arg1);
            return;
        case 96:
            func_8000DA78(arg0, arg1);
            return;
        case 64:
            func_8000D3C8(arg0, arg1);
            return;
        }
        func_80007FA8((*(s32 *)D_80162F54));
        func_80007F38(((s32)&D_80000734));
        func_80007FA8(((struct gd_4_s32 *)D_80162F54)->v);
        func_80007F38(((s32)&D_80000738));
        func_80008168(((s32)&D_8000073C));
    }
}
