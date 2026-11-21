#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_80018DF0;
extern s32 D_80056048;
extern s32 D_80056054;
extern s32 D_8005998C;
extern s32 D_800DE640;
extern s32 D_800E6B18;
s32 func_800192F8();
s32 func_80027388();
s32 func_80027504();
s32 func_80035E48();

struct n64dk_r12 func_80018F64(s32 arg1) {
    s32 pad0[2];
    struct n64dk_r12 sp18;
    s32 sp28;
    s32 sp2C;
    s32 pad1[2];
    s8 pad2;

    for (;;) {
        if (((sp28 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp28 & 0xFFFF) {
        case 8:
            for (sp2C = 0;;) {
                if (sp2C >= 3) {
                    break;
                }
                (*(s32 *)((sp2C * 4) + ((s32)&D_800E6B18))) = func_80027504(0, ((s32)&D_80018DF0), 0x4000000);
                ((struct gd_48_s32 *)(*(s32 *)((sp2C * 4) + ((s32)&D_800E6B18))))->v = *(s32 *)((sp2C * 4) + ((s32)&D_80056048));
                (*(s32 *)((D_8005998C * 4) + ((s32)&D_800DE640))) = 0;
                sp2C++;
            }
            break;
        case 15:
            func_800192F8(1, 8, 2);
            break;
        case 11:
            if (((u32)sp28 >> 16) == 8) {
                if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800DE640))) == 1) {
                    ((struct gd_48_s32 *)(*(s32 *)((D_8005998C * 4) + ((s32)&D_800E6B18))))->v = *(s32 *)((D_8005998C * 4) + ((s32)&D_80056048));
                    (*(s32 *)((D_8005998C * 4) + ((s32)&D_800DE640))) = 0;
                } else {
                    ((struct gd_48_s32 *)(*(s32 *)((D_8005998C * 4) + ((s32)&D_800E6B18))))->v = *(s32 *)((D_8005998C * 4) + ((s32)&D_80056054));
                    (*(s32 *)((D_8005998C * 4) + ((s32)&D_800DE640))) = 1;
                    func_800192F8(2, 8, 1);
                }
            }
            break;
        case 45:
            for (sp2C = 0;;) {
                if (sp2C >= 3) {
                    break;
                }
                func_80027388((*(s32 *)((sp2C * 4) + ((s32)&D_800E6B18))));
                sp2C++;
            }
            sp18.w[1] = 0;
            sp18.w[0] = 0;
            return sp18;
            break;
        case 6:
            break;
        }
    }
    sp18.w[1] = 2;
    sp18.w[0] = -1;
    return sp18;
}
