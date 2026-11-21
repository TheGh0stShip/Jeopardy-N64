#include "n64dk_lift.h"

M2C_UNK osCreatePiManager(); /* extern */
M2C_UNK osCreateThread(); /* extern */
M2C_UNK osSetThreadPri();           /* extern */
M2C_UNK osStartThread();                   /* extern */
extern s32 D_80058D3C;
extern M2C_UNK D_800CD800;
extern M2C_UNK D_800CD9B0;
extern M2C_UNK D_800CDD10;
extern M2C_UNK D_800CFEC0;
extern M2C_UNK D_800D01E0;
extern M2C_UNK D_800E8E90;
extern M2C_UNK func_80036204;
extern M2C_UNK func_800363F8;

void func_80035FC8(s32 arg0) {
    osCreatePiManager(0x96, &D_800D01E0, &D_800CFEC0, 0xC8);
    osCreateThread(&D_800CD9B0, 0xA, &func_80036204, arg0, &D_800E8E90, 0xA);
    osCreateThread(&D_800CDD10, 0xB, &func_800363F8, arg0, &D_800CD800, 8);
    if (D_80058D3C == 0) {
        osStartThread(&D_800CD9B0);
    }
    osSetThreadPri(0, 0);
loop_3:
    goto loop_3;
}
