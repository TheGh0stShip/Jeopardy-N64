#include "n64dk_lift.h"

extern s32 func_80035FC8;
extern s32 D_800CDB60;
extern s32 D_800CFEC0;
extern s32 D_800E3B04;
s32 func_80041668();
s32 func_80047B98();
s32 func_80047DD8();

void func_80035F50(void) {
    s8 pad0;

    func_80047DD8();
    func_80041668(((s32)&D_800CDB60), 1, ((s32)&func_80035FC8), D_800E3B04, ((s32)&D_800CFEC0), 10);
    func_80047B98(((s32)&D_800CDB60));
}
