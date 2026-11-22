typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_010942B8;
extern s32 D_8000135C;
extern s32 D_80001374;
extern s32 D_80001384;
extern s32 D_80058850;
extern s32 D_80058858;
extern s32 D_800599E8;
extern s32 D_800D7710;
extern s32 D_800D7918;
extern s32 D_800DDFA8;
extern s32 D_800DE5D8;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E5C88;
s32 func_80011AD8();
s32 func_8001AB70();
s32 func_8001F7C8();
s32 func_8001F900();
s32 func_8001FBF8();
s32 func_8001FD54();
s32 sprintf();

void func_80024520(void) {
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;

    sp20 = 0;
    sp24 = 0;
    sp28 = 320;
    sp2C = 240;
    func_8001AB70(sp20, sp24, sp28, sp2C, 8, 8, 128, 255);
    func_8001AB70(130, 190, 60, 25, 0, 0, 0, 255);
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xE7000000;
    ((struct gd_4_s32 *)sp30)->v = 0;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0x6000000;
    ((struct gd_4_s32 *)sp30)->v = (s32)&D_010942B8;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xBA001402;
    ((struct gd_4_s32 *)sp30)->v = 0x200000;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xBA001402;
    ((struct gd_4_s32 *)sp30)->v = 0;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xB900031D;
    ((struct gd_4_s32 *)sp30)->v = 0x5041C8;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xFA000000;
    ((struct gd_4_s32 *)sp30)->v = 0xFFFF00FF;
    func_80011AD8(1);
    func_8001FD54(0, 80, 320, 240, func_8001F900((*(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88))), D_80058850));
    func_80011AD8(1);
    func_8001F7C8((*(s32 *)((((D_80058858 * 6) + D_800599E8) * 4) + ((s32)&D_800E5C88))));
    sprintf(((s32)&D_800DE5D8), ((s32)&D_8000135C), ((s32)&D_800D7710), (D_80058850 + 1) * 100 * (D_80058858 + 1));
    func_8001FD54(0, 15, 320, 240, ((s32)&D_800DE5D8));
    if (D_800D7918 == 1) {
        sp30 = (s32)D_800E0F4C++;
        (*(s32 *)sp30) = 0xFA000000;
        ((struct gd_4_s32 *)sp30)->v = 0xC80000FF;
        sprintf(((s32)&D_800DE5D8), ((s32)&D_80001374), D_800DDFA8);
    } else {
        sp30 = (s32)D_800E0F4C++;
        (*(s32 *)sp30) = 0xFA000000;
        ((struct gd_4_s32 *)sp30)->v = 0xC800FF;
        sprintf(((s32)&D_800DE5D8), ((s32)&D_80001384), D_800DDFA8);
    }
    func_8001FBF8(130, 190, 60, 90, ((s32)&D_800DE5D8));
}
