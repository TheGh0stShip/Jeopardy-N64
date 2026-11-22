typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern s32 D_01094258;
extern u16 D_80055C20;
extern u16 D_80055C22;
extern u16 D_80055C26;
extern u16 D_80055C28;
extern u16 D_80055C2C;
extern u16 D_80055C2E;
extern u16 D_80055C32;
extern u16 D_80055C34;
extern struct n64dk_e8 *D_800E0F4C;
extern s32 D_800E3720;
extern u16 D_800E3722;
extern s32 D_800E3724;
extern s32 D_800E3740;
extern u16 D_800E3742;
s32 func_80009CFC();
s32 func_80011D18();

void func_80012D28(s32 arg0, s32 arg1) {
    s32 sp28;
    u16 sp2C;
    u16 sp2E;
    s32 sp30;

    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0x6000000;
    ((struct gd_4_s32 *)sp30)->v = (s32)&D_01094258;
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0x1040040;
    ((struct gd_4_s32 *)sp30)->v = arg1 & 0x1FFFFFFF;
    sp28 = func_80011D18(arg0);
    D_80055C26 = D_80055C32 = D_800E3742;
    D_80055C20 = D_80055C2C = -D_800E3742;
    D_80055C22 = D_80055C28 = D_800E3722;
    D_80055C2E = D_80055C34 = -D_800E3722;
    switch (*(u16 *)D_800E3724) {
    case 0:
        sp2C = 0;
        sp2E = 2;
        break;
    case 1:
        sp2C = 3;
        sp2E = 1;
        break;
    case 2:
        sp2C = 3;
        sp2E = 0;
        break;
    default:
        return;
    }
    func_80009CFC(sp28, sp2C, sp2E, 0, 0, (D_800E3740 - 1), (D_800E3720 - 1), D_800E3740, D_800E3720);
    sp30 = (s32)D_800E0F4C++;
    (*(s32 *)sp30) = 0xBD000000;
    ((struct gd_4_s32 *)sp30)->v = 0;
}
