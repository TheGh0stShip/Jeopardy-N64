#include "n64dk_lift.h"

struct gd_204_s32 { u8 pad[0x204]; s32 v; };
struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_218_s32 { u8 pad[0x218]; s32 v; };
struct gd_21C_s32 { u8 pad[0x21C]; s32 v; };
struct gd_220_s32 { u8 pad[0x220]; s32 v; };
s32 func_800923A8();
s32 func_80092594();
s32 func_800925B8();

s32 func_800914CC(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    u16 sp1C;
    u8 sp1E;

    sp10 = 0;
    sp14 = func_800923A8(((s32)&sp1C), 1, 2, ((struct gd_208_s32 *)arg0)->v);
    if (sp14 != 2) {
        ((struct gd_204_s32 *)arg0)->v = 1;
        return 1;
    }
    sp10 = func_800925B8((sp1C + 1));
    if (sp10 == 0) {
        return 1;
    }
    (*(s8 *)(sp1C + sp10)) = 0;
    sp14 = func_800923A8(sp10, 1, sp1C, ((struct gd_208_s32 *)arg0)->v);
    if (sp14 < sp1C) {
        ((struct gd_204_s32 *)arg0)->v = 1;
        return 1;
    }
    sp18 = 6;
    for (;;) {
        if (((*(u8 *)(sp10 + sp18)) & 128) == 0) {
            break;
        }
        sp1E = *(u8 *)(sp10 + sp18);
        switch (sp1E) {
        case 185:
            break;
        case 184:
            break;
        case 188:
            break;
        case 190:
            break;
        case 189:
            break;
        case 191:
            break;
        default:
            if ((u32)sp1E < 188) {
                return 1;
            }
            switch ((s32)(((u32)sp1E >> 4) & 255)) {
            case 12:
            case 13:
                ((struct gd_218_s32 *)arg0)->v = sp1E;
                break;
            case 14:
                if (((struct gd_21C_s32 *)arg0)->v != 0) {
                    if (((struct gd_21C_s32 *)arg0)->v != sp1E) {
                        break;
                    }
                }
                ((struct gd_21C_s32 *)arg0)->v = sp1E;
                break;
            case 15:
                ((struct gd_220_s32 *)arg0)->v = sp1E;
                break;
            }
            break;
        }
        sp18 = sp18 + 3;
    }
    if (sp10 != 0) {
        func_80092594(sp10);
    }
    return 0;
}
