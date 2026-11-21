#include "n64dk_lift.h"

struct n64dk_r12 { s32 w[3]; };
extern s32 D_80055C94;
extern s32 D_80059DC8;
extern s32 D_8005BA00;
extern s32 D_8005D638;
extern s32 D_8005F270;
extern s32 D_80060EA8;
extern s32 D_80062AE0;
extern s32 D_80064718;
extern s32 D_80066350;
extern s32 D_80067F88;
extern s32 D_80069BC0;
extern s32 D_8006B7F8;
extern s32 D_8006D430;
extern s32 D_8006F068;
extern s32 D_800D768C;
extern s32 D_800E335C;
s32 func_80016548();
s32 func_80027714();

struct n64dk_r12 func_80016690(s32 arg1) {
    s32 sp18;
    s32 sp1C;
    struct n64dk_r12 sp20;

    D_800D768C = D_800D768C + D_800E335C;
    if (D_800D768C >= 226) {
        D_80055C94 = D_80055C94 + 5;
    }
    sp18 = D_80055C94;
    sp1C = func_80027714(0x8000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80059DC8), sp18, 0, 0, 0);
    sp1C = func_80027714(0x9000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8005BA00), sp18, -120, 0, 0);
    sp1C = func_80027714(0xA000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8005D638), sp18, -240, 0, 0);
    sp1C = func_80027714(0xB000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8005F270), sp18, -360, 0, 0);
    sp1C = func_80027714(0xC000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80060EA8), sp18, -480, 0, 0);
    sp1C = func_80027714(0xD000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80062AE0), sp18, -600, 0, 0);
    sp1C = func_80027714(0xE000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80064718), sp18, -720, 0, 0);
    sp1C = func_80027714(0xF000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80066350), sp18, -840, 0, 0);
    sp1C = func_80027714(0x10000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80067F88), sp18, -960, 0, 0);
    sp1C = func_80027714(0x11000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_80069BC0), sp18, 0, 0, 0);
    sp1C = func_80027714(0x12000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8006B7F8), sp18, 0, 0, 0);
    sp1C = func_80027714(0x13000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8006D430), sp18, 0, 0, 0);
    sp1C = func_80027714(0x14000000, 0xFF000000);
    func_80016548(sp1C, ((s32)&D_8006F068), sp18, 0, 0, 0);
    sp20.w[1] = 1;
    sp20.w[0] = 0;
    return sp20;
}
