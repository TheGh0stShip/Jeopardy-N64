#include "n64dk_lift.h"

extern s32 D_800580E8;
extern s32 D_80058D5C;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_80059BA4;
extern s32 D_800E90A0;
extern s32 D_800E90A8;
s32 func_80005EA4();
s32 func_80019960();
s32 func_80034C20();
s32 func_80034CF0();
s32 func_800359E8();

void func_80019808(void) {
    s8 pad0;

    if ((*(s32 *)((D_80058D5C * 4) + ((s32)&D_800580E8))) == 0) {
        if (D_80059BA4 != 0) {
            func_80019960();
            if (D_800599E8 != D_800E90A0) {
                func_80005EA4(16);
                func_80034C20();
                D_800599E8++;
                if ((u32)D_800599E8 >= 6) {
                    D_800599E8 = 0;
                }
                func_80034CF0();
                return;
            }
            if (D_800599EC != D_800E90A8) {
                func_80005EA4(16);
                func_80034C20();
                D_800599EC++;
                if ((u32)D_800599EC >= 5) {
                    D_800599EC = 0;
                }
                func_80034CF0();
                return;
            }
            func_800359E8(0x80000006);
        }
    }
}
