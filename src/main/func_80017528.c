#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
struct gd_10_s16 { u8 pad[0x10]; s16 v; };
struct gd_12_s16 { u8 pad[0x12]; s16 v; };
struct gd_14_s16 { u8 pad[0x14]; s16 v; };
struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_010C32D0;
extern s32 D_010C4358;
extern s32 D_010C48F0;
extern s32 D_010C4E88;
extern s32 D_010C5420;
extern s32 D_010C59B8;
extern s32 D_010C5B50;
extern s32 D_010C5DE8;
extern s32 D_010C5FD0;
extern s32 D_010C6380;
extern s32 D_010C6608;
extern s32 D_010C6848;
extern s32 D_010C6A30;
extern s32 D_010C6C98;
extern s32 func_80016B00;
extern s32 func_80032A10;
extern s32 D_800E0DE4;
extern s32 D_800E0E38;
extern s32 D_800E3358;
extern s32 D_800E3688;
extern s32 D_800E3754;
extern s32 D_800E6B0C;
extern s32 D_800E6E2C;
extern s32 D_800E6E44;
extern s32 D_800E6E48;
extern s32 D_800E6E5C;
extern s32 D_800E6E70;
extern s32 D_800E6E78;
extern s32 D_800E6E88;
extern s32 D_800E8EE0;
extern s32 D_800E8F00;
s32 func_80027388();
s32 func_80027504();
s32 func_80032CF0();
s32 func_80035E48();

struct n64dk_r12 func_80017528(s32 arg1) {
    s32 sp10;
    struct n64dk_r12 sp18;

    sp18.w[1] = 1;
    sp18.w[0] = 0;
    for (;;) {
        sp10 = func_80035E48(arg1);
        if (sp10 == 0) {
            break;
        }
        switch (sp10) {
        case 8:
            D_800E3358 = func_80027504(40, ((s32)&func_80032A10), 0x4000000);
            ((struct gd_48_s32 *)D_800E3358)->v = (s32)&D_010C32D0;
            ((struct gd_10_s16 *)D_800E3358)->v = 0;
            ((struct gd_12_s16 *)D_800E3358)->v = 0;
            ((struct gd_14_s16 *)D_800E3358)->v = 0;
            D_800E6E5C = func_80032CF0(0, ((s32)&D_010C6C98), ((s32)&func_80016B00), 0x8000000);
            D_800E6E48 = func_80032CF0(0, ((s32)&D_010C6A30), ((s32)&func_80016B00), 0x9000000);
            D_800E6E70 = func_80032CF0(0, ((s32)&D_010C6848), ((s32)&func_80016B00), 0xA000000);
            D_800E6E78 = func_80032CF0(0, ((s32)&D_010C6608), ((s32)&func_80016B00), 0xB000000);
            D_800E6E2C = func_80032CF0(0, ((s32)&D_010C6380), ((s32)&func_80016B00), 0xC000000);
            D_800E6E88 = func_80032CF0(0, ((s32)&D_010C5FD0), ((s32)&func_80016B00), 0xD000000);
            D_800E6E44 = func_80032CF0(0, ((s32)&D_010C5DE8), ((s32)&func_80016B00), 0xE000000);
            D_800E8EE0 = func_80032CF0(0, ((s32)&D_010C5B50), ((s32)&func_80016B00), 0xF000000);
            D_800E8F00 = func_80032CF0(0, ((s32)&D_010C59B8), ((s32)&func_80016B00), 0x10000000);
            D_800E6B0C = func_80032CF0(0, ((s32)&D_010C5420), ((s32)&func_80016B00), 0x11000000);
            D_800E3754 = func_80032CF0(0, ((s32)&D_010C4E88), ((s32)&func_80016B00), 0x12000000);
            D_800E0E38 = func_80032CF0(0, ((s32)&D_010C48F0), ((s32)&func_80016B00), 0x13000000);
            D_800E3688 = func_80032CF0(0, ((s32)&D_010C4358), ((s32)&func_80016B00), 0x14000000);
            func_80027388(D_800E0DE4);
            break;
        }
    }
    return sp18;
}
