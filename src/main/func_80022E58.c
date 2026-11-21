#include "n64dk_lift.h"

extern s32 D_8005812C;
extern s32 D_80058878;
extern s32 D_80058B74;
extern s32 D_80059948;
extern s32 D_800DE5D8;
s32 func_800494AC();

void func_80022E58(void) {
    func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80058878), (*(s32 *)(((*(s32 *)((D_80059948 * 12) + ((s32)&D_80058B74))) * 4) + ((s32)&D_8005812C))));
}
