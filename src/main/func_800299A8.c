typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

struct n64dk_r12 { s32 w[3]; };
extern s32 func_80029638;
extern s32 func_800297FC;
extern s32 D_80050704;
extern s32 D_800560F8;
extern s32 D_80056100;
extern s32 D_80056104;
extern s32 D_80056108;
extern s32 D_8005610C;
extern s32 D_80058120;
extern s32 D_80058D80;
extern s32 D_8005998C;
extern s32 D_80059998;
extern s32 D_800D7680;
struct n64dk_a800DE160 { u8 m0; u8 pad1[0x35]; };
extern struct n64dk_a800DE160 D_800DE160[];
extern s32 D_800DE630;
extern s32 D_800E0F40;
extern s32 D_800E3698;
extern s32 D_800E3764;
extern s32 D_800E3768;
extern s32 D_800E6E30;
s32 func_80005EA4();
s32 func_80018360();
s32 func_800192F8();
s32 func_8002DCF4();
s32 func_80035138();
s32 func_80035760();
s32 func_800359E8();
s32 func_80035E48();

struct n64dk_r12 func_800299A8(s32 arg1) {
    struct n64dk_r12 sp10;
    s32 sp20;
    s32 pad0;
    s8 pad1;

    for (;;) {
        if (((sp20 = (s32)func_80035E48(arg1)) & 0xFFFF) == 0) {
            break;
        }
        switch (sp20 & 0xFFFF) {
        case 8:
            if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3698))) < 0) {
                func_800359E8(29);
            } else {
                D_80059998 = 25;
                D_800560F8 = 20;
                D_80050704 = D_8005998C + 5;
                func_80035138();
                D_80056100 = 0;
                D_80056104 = 0;
                D_80056108 = 0;
                D_8005610C = 0;
                D_800E3764 = 0;
                D_800E6E30 = 16;
                D_800E3768 = 0;
                D_800DE630 = 16;
                D_80059998 = 36;
                func_8002DCF4(64, 5);
            }
            break;
        case 37:
            func_80005EA4(7);
            func_80035760(((s32)&func_80029638), 0x7000000);
            break;
        case 30:
            if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E3698))) < 0) {
                func_800359E8(29);
            } else {
                D_800560F8 = 20;
                D_80058D80 = (s32)&D_800DE160[D_8005998C];
                D_80050704 = D_8005998C + 5;
                D_80056100 = 0;
                D_80056104 = 0;
                D_80056108 = 0;
                D_8005610C = 0;
                D_800E3764 = 0;
                D_800E6E30 = 16;
                D_800E3768 = 0;
                D_800DE630 = 16;
                D_80059998 = 36;
                func_800359E8(5);
            }
            break;
        case 40:
            D_80059998 = 37;
            if ((*(s32 *)((D_8005998C * 4) + ((s32)&D_800E0F40))) != 0) {
                func_8002DCF4(49, 2);
            } else {
                func_8002DCF4(43, 2);
            }
            break;
        case 39:
            func_80005EA4(7);
            D_800E3768 = 16;
            (*(s32 *)((D_8005998C * 4) + ((s32)&D_80058120))) = *(s32 *)((D_8005998C * 4) + ((s32)&D_800D7680));
            func_80018360(D_8005998C);
            break;
        case 28:
            D_800E3764 = -16;
            D_800E6E30 = -16;
            D_800E3768 = -16;
            D_800DE630 = -16;
            func_800192F8(4, 10, 1);
            break;
        case 42:
            func_80005EA4(7);
            D_800E3764 = 16;
            sp10.w[1] = 2;
            sp10.w[0] = -1;
            return sp10;
            break;
        case 11:
            if (((u32)sp20 >> 16) == 10) {
                func_80035760(((s32)&func_800297FC), 0x7000000);
            }
            break;
        case 7:
            sp10.w[1] = 0;
            sp10.w[0] = 0;
            return sp10;
            break;
        }
    }
    sp10.w[1] = 2;
    sp10.w[0] = -1;
    return sp10;
}
