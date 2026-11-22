typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32;

struct Obj8000C338 { u8 pad0[0x10]; s16 unk_10; s16 unk_12; s16 unk_14; u8 pad16[0x12]; f32 unk_28; f32 unk_2C; f32 unk_30; };
struct n64dk_a80050496 { u16 m0; u8 pad2[0x2]; u16 m4; u8 pad6[0x2]; u16 m8; u8 padA[0x16]; };
extern struct n64dk_a80050496 D_80050496[];
struct n64dk_a800504A0 { f32 m0; f32 m4; f32 m8; u8 padC[0x14]; };
extern struct n64dk_a800504A0 D_800504A0[];
extern s32 D_80050704;
extern s32 D_8005070C;
extern u16 D_800D769A;
extern u16 D_800D769E;
extern u16 D_800D76A2;
extern f32 D_800D76A4;
extern f32 D_800D76A8;
extern f32 D_800D76AC;
extern u16 D_800E3606;
extern s32 D_800E8EE8;
extern s32 D_800E8EEC;
extern s32 D_800E8EF0;
extern u32 D_800E8FB0;
extern u32 D_800E8FB8;
extern u32 D_800E8FF4;
struct Obj8000C338 *func_80027714(s32, s32);

void func_8000C338(void) {
    struct Obj8000C338 *p;

    if (D_800E3606 & 1) {
        D_8005070C -= 1;
    }
    if (D_800E3606 & 2) {
        D_8005070C += 1;
    }
    p = func_80027714(0x03000000, 0xFF000000);
    D_800E8FB0 = p->unk_28 = D_800504A0[D_80050704].m0 + D_800D76A4;
    D_800E8FB8 = p->unk_2C = D_800504A0[D_80050704].m4 + D_800D76A8;
    D_800E8FF4 = p->unk_30 = D_800504A0[D_80050704].m8 + D_800D76AC;
    D_800E8EE8 = p->unk_10 = D_80050496[D_80050704].m0 + D_800D769A;
    D_800E8EEC = p->unk_12 = D_80050496[D_80050704].m4 + D_800D769E;
    D_800E8EF0 = p->unk_14 = D_80050496[D_80050704].m8 + D_800D76A2;
}
