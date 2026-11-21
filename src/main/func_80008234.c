#include "n64dk_lift.h"

struct n64dk_a8005928C { s32 m0; u8 pad4[0x3C]; };
extern struct n64dk_a8005928C D_8005928C[];
extern s32 D_80000550;
extern s32 func_80008190;
extern u8 D_8004DFD0;
extern s32 D_800580DC;
extern s32 D_800580E8;
extern s32 D_800580F8;
extern s32 D_800A3600;
extern s16 D_800A3610;
extern s32 D_800A3630;
extern s32 D_800A57E0;
extern s32 D_800D4450;
extern s32 D_800DDF98;
extern s32 D_800DFD00[][16];
extern s32 D_800E3678;
extern s32 D_800E3758;
extern s32 D_800E5C08;
extern s32 D_800E6E80;
extern s32 D_800E90B8;
extern s32 D_800E90C8;
s32 func_80007F38();
s32 func_800415A8();
s32 func_80041668();
s32 func_80047B98();
s32 func_80048438();
s32 func_80048FE8();

void func_80008234(void) {
    s32 sp18;
    s32 sp1C;
    s8 pad0;

    func_80048438(((s32)&D_800D4450), ((s32)&D_800E6E80), 1);
    func_80041668(((s32)&D_800A3630), 9, ((s32)&func_80008190), 0, ((s32)&D_800A57E0), 9);
    D_800A3610 = 5;
    func_800415A8(5, ((s32)&D_800D4450), ((s32)&D_800A3610));
    if ((sp18 = (s32)func_80048FE8(((s32)&D_800D4450), ((s32)&D_8004DFD0), ((s32)&D_800A3600))) != 0) {
        func_80007F38(((s32)&D_80000550));
    }
    for (sp18 = 0;;) {
        if (sp18 >= 3) {
            break;
        }
        (*(s32 *)((sp18 * 4) + ((s32)&D_800580DC))) = 1;
        sp18++;
    }
    for (sp18 = 0;;) {
        if (sp18 >= 4) {
            break;
        }
        if (((D_8004DFD0 >> sp18) % 2) != 0) {
            (*(s32 *)((D_800580F8 * 4) + ((s32)&D_800DDF98))) = sp18 + 1;
            (*(s32 *)((D_800580F8 * 4) + ((s32)&D_800580DC))) = 0;
            (*(s32 *)(((D_800580F8++) * 4) + ((s32)&D_800580E8))) = sp18 + 1;
        }
        sp18++;
    }
    for (sp18 = 0;;) {
        if (sp18 >= 3) {
            break;
        }
        if ((*(s32 *)((sp18 * 4) + ((s32)&D_800580E8))) != 0) {
            (*(s32 *)((sp18 * 4) + ((s32)&D_800E3678))) = 1;
            D_8005928C[sp18].m0 = 1;
        }
        sp18++;
    }
    for (sp18 = 0;;) {
        if (sp18 >= 4) {
            break;
        }
        (*(s16 *)((sp18 * 2) + ((s32)&D_800E90C8))) = 0;
        sp1C = 0;
        for (;;) {
            if (sp1C >= 16) {
                break;
            }
            D_800DFD00[sp18][sp1C] = 0;
            sp1C++;
        }
        sp18++;
    }
    D_800E90B8 = (((s32)&D_800E5C08) & -17) + 32;
    D_800E3758 = 0;
    func_80047B98(((s32)&D_800A3630));
}
