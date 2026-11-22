/* game state words, light tables (Ambient_t / Light_t layout), build date, ROM file table, win string */
typedef int s32;
typedef unsigned int u32;
typedef signed char s8;
typedef unsigned char u8;

typedef struct { u8 col[3]; u8 pad1; u8 colc[3]; u8 pad2; } AmbientData;              /* = Ambient_t */
typedef struct { u8 col[3]; u8 pad1; u8 colc[3]; u8 pad2; s8 dir[3]; u8 pad3; s32 pad4; } LightData; /* = Light (16) */

extern s32 D_8004E1EC[], D_8004E1F0[], D_8004E1F4[], D_8004E1F8[], D_8004E1FC[], D_8004E200[], D_8004E204[];
typedef struct {
    u32 romAddr;   /* 0xB0xxxxxx cartridge address */
    s32 size;
    s32 *dest;     /* receives the loaded size/handle */
} RomFile;

s32 D_800506F0 = 0;
s32 D_800506F4 = 8;
s32 D_800506F8 = 0;
s32 D_800506FC = 0x29202D20;   /* ") - " leftover bytes */
s32 D_80050700 = 0;
s32 D_80050704 = 2;            /* current game mode index */
s32 D_80050708 = 1;
s32 D_8005070C = 0x14B;
s32 D_80050710 = -0x334;
s32 D_80050714 = -100;
s32 D_80050718 = 0;
s32 D_8005071C = 0;

LightData D_80050720 = { { 0xFF, 0xFF, 0xFF }, 0, { 0xFF, 0xFF, 0xFF }, 0, { -22, 0, -70 }, 0, 0 };
LightData D_80050730 = { { 0xB4, 0xB4, 0xB4 }, 0, { 0xB4, 0xB4, 0xB4 }, 0, { -90, 98, 70 }, 0, 0 };
LightData D_80050740 = { 0 };
AmbientData D_80050750 = { 0 };
LightData D_80050758 = { { 0x5A, 0x5A, 0x96 }, 0, { 0x5A, 0x5A, 0x96 }, 0, { -22, 0, -70 }, 0, 0 };
LightData D_80050768 = { { 0x5A, 0x5A, 0x96 }, 0, { 0x5A, 0x5A, 0x96 }, 0, { -90, 98, 70 }, 0, 0 };
LightData D_80050778 = { 0 };
AmbientData D_80050788 = { { 0x10, 0x10, 0x10 }, 0, { 0x10, 0x10, 0x10 }, 0 };
LightData D_80050790 = { { 0 }, 0, { 0 }, 0, { -50, -100, 127 }, 0, 0 };
LightData D_800507A0 = { { 0x64, 0x64, 0x64 }, 0, { 0x64, 0x64, 0x64 }, 0, { 127, 0, 127 }, 0, 0 };
LightData D_800507B0 = { { 0x46, 0x46, 0x46 }, 0, { 0x46, 0x46, 0x46 }, 0, { 0, 0, 127 }, 0, 0 };
LightData D_800507C0 = { 0 };
LightData D_800507D0 = { 0 };
LightData D_800507E0 = { 0 };
LightData D_800507F0 = { 0 };

s32 D_80050800 = 0;
s32 D_80050804 = 1;
char D_80050808[24] = "01-06-98 18:52:09\0} ,\r\n\t";   /* build date; tail is leftover bytes */

RomFile D_80050820[7] = {
    { 0xB02541B0, 0x35, D_8004E1EC },
    { 0xB0274D9F, 0x33, D_8004E1F0 },
    { 0xB027F70F, 0x3D, D_8004E1F4 },
    { 0xB0298AF9, 0x34, D_8004E1F8 },
    { 0xB02AD0AD, 0x36, D_8004E1FC },
    { 0xB02B3991, 0x37, D_8004E200 },
    { 0xB02BA5D0, 0x3C, D_8004E204 },
};

char D_80050874[] = "You are the BIG winner!";
s32 D_8005088C = 0;
