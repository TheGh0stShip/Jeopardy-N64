typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct n64dk_r12 { s32 w[3]; };
struct n64dk_a800DF030 { u8 m0; };
extern struct n64dk_a800DF030 D_800DF030[];
extern void func_8002B718();
extern s16 D_8004DFD2;
extern s32 D_800560F8;
extern s32 D_800580C4;
extern s32 D_800580DC;
extern s32 D_8005812C;
extern s32 D_80058844;
extern s32 D_80058848;
extern s32 D_80058D88;
extern s32 D_80059830;
extern s32 D_80059864;
extern s32 D_80059878;
extern s32 D_80059898;
extern s32 D_800598AC;
extern s32 D_800598D8;
extern s32 D_8005998C;
extern s32 D_800DDF98;
extern s32 D_800E0DF0;
extern s32 D_800E3310;
extern s32 D_800E3660;
s32 func_80008C40();
s32 func_8002EF00();
s32 func_80035E48();

struct n64dk_r12 func_8002C5F0(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            func_80008C40(0);
            D_8004DFD2 = 3840;
            D_80058848 = 0;
            D_80058844 = 0;
            D_80058D88 = 0;
            (*(s8 *)(D_80058D88 + ((s32)&D_800DF030))) = 95;
            sp28 = 1;
            for (;;) {
                if ((u32)sp28 >= 80) {
                    break;
                }
                (*(s8 *)(sp28 + ((s32)&D_800DF030))) = 0;
                sp28++;
            }
            break;
        case 6:
            sp24 = func_8002EF00(((u32)sp20 >> 16));
            switch (sp24) {
            case 99:
                sp28 = 0;
                for (;;) {
                    if (!(((*(u8 *)(sp28 + ((s32)&D_800DF030))) != 95) && ((*(u8 *)(sp28 + ((s32)&D_800DF030))) != 0))) {
                        break;
                    }
                    (*(s8 *)((*(s32 *)((D_8005998C * 4) + ((s32)&D_8005812C))) + sp28)) = D_800DF030[sp28++].m0;
                }
                (*(s8 *)((*(s32 *)((D_8005998C * 4) + ((s32)&D_8005812C))) + sp28)) = 0;
                D_8005998C++;
                for (;;) {
                    if ((u32)D_8005998C >= 3) {
                        break;
                    }
                    if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800580DC))) == 0) {
                        break;
                    } else {
                        D_8005998C++;
                    }
                }
                if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) == 99) {
                    (*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) = 0;
                }
                if ((u32)D_8005998C < 3) {
                    for (;;) {
                        if ((*(s32 *)(((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) * 4) + ((s32)&D_800E0DF0))) == 1) {
                            break;
                        }
                        (*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660)))++;
                        if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) >= 6) {
                            (*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3660))) = 0;
                        }
                    }
                    D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800DDF98))) - 1;
                    D_800560F8 = 13;
                    D_800598AC = (s32)&func_8002B718;
                } else {
                    D_8005998C = 0;
                    D_800E3310 = (*(s32 *)((D_8005998C * 4) + ((s32)&D_800DDF98))) - 1;
                    D_800560F8 = 6;
                    D_800580C4 = 0;
                    D_80058848 = *(s32 *)((D_800560F8 * 4) + ((s32)&D_80059898));
                    D_80058844 = *(s32 *)((D_800560F8 * 4) + ((s32)&D_800598D8));
                    D_800598AC = *(s32 *)((D_800560F8 * 4) + ((s32)&D_80059864));
                    D_80059878 = *(s32 *)((D_800560F8 * 4) + ((s32)&D_80059830));
                }
                sp10.w[1] = 0;
                sp10.w[0] = 0;
                return sp10;
                break;
            case 1:
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
