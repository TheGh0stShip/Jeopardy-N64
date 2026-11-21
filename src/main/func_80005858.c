#include "n64dk_lift.h"

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_C_s32 { u8 pad[0xC]; s32 v; };
extern s32 D_8004DF30;
extern s32 D_8004DF34;
extern s32 D_8004E1C4;
extern s32 D_8004E1C8;
extern s32 D_8004E1CC;
extern s32 D_80098F24;
extern s32 D_80098F28;
extern s32 D_80098F2C;
extern s32 D_80098F30;
extern s32 D_80098F3C;
extern s32 D_800D7678;
extern s32 D_800E3618;
extern s32 D_800E8EF8;
s32 func_800067B0();
s32 func_80007784();
s32 func_80036448();
s32 func_8003D568();
s32 func_800419BC();
s32 func_80045678();
s32 func_8004D19C();

void func_80005858(void) {
    s32 sp10;
    s32 pad0;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 pad1;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    u8 sp34;
    s32 sp38;
    s32 pad2;
    s32 sp40;
    s32 sp44;
    u8 sp48;
    u8 sp49;
    s32 sp4C;
    s32 sp50;
    s32 sp54;
    s32 sp58;
    s32 pad3;
    s32 sp60;
    s32 sp64;
    s32 sp68;
    s32 pad4;
    s32 sp70;
    s32 sp74;

    sp70 = func_80007784(0x30D40);
    func_8003D568(((s32)&D_800E3618), sp70, 0x30D40);
    sp18 = 32;
    sp1C = 32;
    sp20 = 48;
    sp28 = 0;
    sp34 = 6;
    sp30 = 0;
    sp2C = (s32)&D_800E3618;
    sp38 = (s32)&D_8004DF34;
    sp60 = 0x5622;
    sp64 = 1;
    sp68 = 0x1000;
    func_800067B0(((s32)&sp18), 12, ((s32)&sp60));
    sp40 = 32;
    sp44 = 48;
    sp48 = 32;
    sp4C = (s32)&D_800E3618;
    sp50 = 0;
    sp54 = 0;
    sp58 = 0;
    sp49 = 7;
    D_800E8EF8 = func_80007784(136);
    func_80045678(D_800E8EF8, ((s32)&sp40));
    D_80098F24 = 32;
    D_80098F28 = 64;
    D_80098F2C = (s32)&D_800E3618;
    func_8004D19C(D_8004DF30, ((s32)&D_80098F24));
    sp10 = D_8004E1C8 - D_8004E1C4;
    D_800D7678 = func_80007784(sp10);
    func_80036448(D_8004E1C4, D_800D7678, sp10);
    func_800419BC(D_800D7678, D_8004E1CC);
    D_80098F30 = ((struct gd_C_s32 *)((struct gd_4_s32 *)D_800D7678)->v)->v;
    D_80098F3C = func_80007784(64);
    sp74 = 0;
    for (;;) {
        if (sp74 >= 32) {
            return;
        }
        (*(s16 *)((sp74 * 2) + D_80098F3C)) = -1;
        sp74++;
    }
}
