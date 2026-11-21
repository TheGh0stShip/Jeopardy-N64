#include "n64dk_lift.h"

struct gd_208_s32 { u8 pad[0x208]; s32 v; };
struct gd_20C_s32 { u8 pad[0x20C]; s32 v; };
struct gd_238_s32 { u8 pad[0x238]; s32 v; };
struct gd_23C_s32 { u8 pad[0x23C]; s32 v; };
struct gd_240_s32 { u8 pad[0x240]; s32 v; };
struct gd_250_f64 { u8 pad[0x250]; f64 v; };
extern s32 D_80074EC0;
extern s32 D_80074EC8;
extern s32 D_80074ED4;
extern s32 D_80074ED8;
extern s32 D_80075BDC;
extern s32 D_80075BE4;
extern s32 D_80075BE8;
extern s32 D_80075BFC;
extern s32 D_80075C18;
extern s32 D_80158990;
extern s32 D_8015EAC8;
extern s32 D_8015EACC;
extern s32 D_8015EAD4;
extern s32 D_8015EAD8;
extern s32 D_8015EADC;
extern s32 D_8015EAE4;
extern s32 D_8015EAE8;
extern s32 D_8015EAEC;
extern s32 D_8015EAF0;
extern s32 D_8015EB28;
extern s32 D_8015EB2C;
extern s32 D_8015EB30;
extern s32 D_8015EB34;
extern s32 D_8015EB38;
extern s32 D_8015EB3C;
extern s32 D_8015EB40;
extern s32 D_8015EB44;
extern s32 D_8015EB48;
extern s32 D_80162F50;
extern s32 D_80162F54;
extern s32 D_80163B70;
extern s32 D_80163B78;
s32 func_80008168();
f64 func_80076E30();
s32 func_80076E98();
s32 func_80076F64();
s32 func_800774B4();
s32 func_80089FD8();
s32 func_8008A4B8();
s32 func_8008AC6C();
s32 func_8008F60C();
s32 func_80092760();

void func_8008A8F8(s32 arg0) {
    s32 sp10;
    s32 sp14;
    s32 sp18[8];
    s32 sp38[8];
    s32 pad0;
    s32 sp5C;
    s32 sp60;
    s32 sp64;
    s32 sp68;
    s32 sp6C;
    s32 sp70;
    s32 sp74;
    s32 sp78;
    s32 sp7C;

    sp68 = -1;
    sp6C = 1;
    sp70 = 0;
    sp74 = 0;
    sp78 = 0;
    sp7C = 0;
    sp14 = 1;
    D_8015EB3C = 0;
    D_80163B70 = (s32)&D_80075BDC;
    D_80158990 = 0;
    D_80162F54 = 0;
    D_8015EAE4 = -1;
    D_8015EAE8 = -1;
    D_8015EB38 = 0;
    sp10 = (s32)&D_80075BE4;
    D_80162F50 = 8;
    D_8015EB44 = 4;
    D_8015EB48 = 4;
    D_80074EC8 = 0;
    D_8015EB3C = func_80092760(arg0);
    if (D_8015EB3C == 0) {
        func_80008168(((s32)&D_80075BE8));
    }
    D_80163B70 = 0;
    D_8015EB40 = (s32)&sp18;
    D_80163B78 = (s32)&sp38;
    if (D_80074ED4 != -1) {
        if (D_80074ED8 != -1) {
            if (D_80074ED8 < D_80074ED4) {
                func_80008168(((s32)&D_80075BFC));
            }
        }
    }
    func_80089FD8();
    D_8015EADC = sp78;
    D_8015EAD8 = 0;
    if (D_8015EAE4 == -1) {
        D_8015EAE4 = 200;
        D_8015EAE8 = 300;
    }
    D_8015EAEC = 150;
    D_8015EAF0 = 150;
    D_8015EB28 = 0;
    D_8015EB30 = D_80163B70;
    D_8015EACC = 0;
    D_8015EAD4 = 0;
    func_8008A4B8(sp10, ((s32)&D_8015EAC8));
    func_8008F60C(((D_8015EB2C < 16) ^ 1));
    func_80076E98();
    sp64 = 300;
    sp60 = 0;
    sp70 = D_80074EC8 == 0;
    D_80158990 = func_80076F64(0x2710);
    D_80162F54 = D_80158990;
    ((struct gd_208_s32 *)D_80158990)->v = D_8015EB3C;
    ((struct gd_20C_s32 *)D_80158990)->v = sp74;
    ((struct gd_23C_s32 *)D_80158990)->v = D_80163B70;
    ((struct gd_240_s32 *)D_80158990)->v = D_8015EB34;
    ((struct gd_238_s32 *)D_80158990)->v = D_8015EB2C;
    sp14 = D_80074EC0;
    D_80074EC0 = 1;
    if (func_800774B4(0, D_80158990, 1, ((s32)&D_8015EAC8)) == 0) {
        func_80008168(((s32)&D_80075C18));
    }
    D_80074EC0 = sp14;
    sp5C = 1;
    if (D_80158990 != 0) {
        ((struct gd_250_f64 *)D_80158990)->v = func_80076E30();
    }
    func_8008AC6C();
}
