#include "n64dk_lift.h"

struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
extern s32 func_80032A10;
extern s32 D_800599F0;
extern s32 D_80059B10[][6];
extern s32 D_800E36A8;
s32 func_80032CF0();

void func_80032DF4(void) {
    s32 sp10;
    s32 pad0;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 pad1;
    s8 pad2;

    sp18 = 0;
    sp10 = 0;
    sp1C = 0;
    for (;;) {
        if (sp1C >= 5) {
            return;
        }
        for (sp20 = 0;;) {
            if (sp20 >= 6) {
                break;
            }
            (*(s32 *)((sp18 * 4) + ((s32)&D_800E36A8))) = func_80032CF0(sp10, (*(s32 *)((D_80059B10[sp1C][sp20] * 4) + ((s32)&D_800599F0))), ((s32)&func_80032A10), (sp18 + 2));
            ((struct gd_10_s16 *)(*(s32 *)((sp18 * 4) + ((s32)&D_800E36A8))))->v = sp20 * 54;
            ((struct gd_12_s16 *)(*(s32 *)((sp18 * 4) + ((s32)&D_800E36A8))))->v = sp20 * 74;
            ((struct gd_14_s16 *)(*(s32 *)(((sp18++) * 4) + ((s32)&D_800E36A8))))->v = sp1C * -80;
            sp20++;
        }
        sp1C++;
    }
}
