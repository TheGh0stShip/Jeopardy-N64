typedef signed char s8; typedef unsigned char u8; typedef signed short s16;
typedef signed int s32; typedef float f32;

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct gd_5_s8 { u8 pad[0x5]; s8 v; };
struct gd_E_s16 { u8 pad[0xE]; s16 v; };
struct n64dk_f10_s32 { u8 pad[0x10]; s32 m[1]; };
extern f32 D_8000049C;
extern f32 D_800004A0;
extern f32 D_800004A4;
extern f32 D_800004A8;
extern f32 D_800004AC;
extern f32 D_800004B0;
extern f32 D_800004B4;
extern f32 D_800004B8;
extern f32 D_800004BC;
extern f32 D_800004C0;
extern f32 D_800004C4;
extern s32 D_8004DF30;
extern s32 D_80058DD8;
extern s32 D_80098F30;
extern s32 D_80098F38;
extern s32 D_80098F3C;
s32 func_80005C10();
s32 func_8003CC48(s32, f32);
s32 func_8003CCA8();
s32 func_8004C598();
s32 func_8004C688();
s32 func_8004C6A8();

s32 func_80005EA4(s32 arg0) {
    f32 sp10;
    s32 pad0;
    s32 sp18;

    if (arg0 >= ((struct gd_E_s16 *)D_80098F30)->v) {
        arg0 = 0;
    }
    D_80098F38 = ((struct n64dk_f10_s32 *)D_80098F30)->m[arg0];
    sp18 = func_80005C10();
    if (sp18 == -1) {
        return -1;
    }
    (*(s16 *)((sp18 * 2) + D_80098F3C)) = func_8004C598(D_8004DF30, D_80098F38);
    if ((*(s16 *)((sp18 * 2) + D_80098F3C)) == -1) {
        return -1;
    }
    func_8004C688(D_8004DF30, (*(s16 *)((sp18 * 2) + D_80098F3C)));
    switch (((struct gd_5_s8 *)((struct gd_4_s32 *)D_80098F38)->v)->v) {
    case 0:
        sp10 = D_8000049C;
        break;
    case 1:
        sp10 = D_800004A0;
        break;
    case 2:
        sp10 = D_800004A4;
        break;
    case 3:
        sp10 = D_800004A8;
        break;
    case 4:
        sp10 = D_800004AC;
        break;
    case 5:
        sp10 = D_800004B0;
        break;
    case 6:
        sp10 = D_800004B4;
        break;
    case 7:
        sp10 = D_800004B8;
        break;
    case 8:
        sp10 = D_800004BC;
        break;
    case 9:
        sp10 = D_800004C0;
        break;
    case 10:
        sp10 = D_800004C4;
        break;
    }
    func_8003CCA8(D_8004DF30, (s16)(D_80058DD8 * 2314));
    func_8003CC48(D_8004DF30, sp10);
    func_8004C6A8(D_8004DF30);
    return sp18;
}
