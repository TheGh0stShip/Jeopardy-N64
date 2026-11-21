#include "n64dk_lift.h"

struct gd_48_s32 { u8 pad[0x48]; s32 v; };
extern s32 D_01007E30;
extern s32 D_80001A44;
extern s32 D_800560F4;
extern s32 D_80058850;
extern s32 D_80058854;
extern s32 D_80058D58;
extern s32 D_80058D60;
extern s32 D_800599E0;
extern s32 D_800599E8;
extern s32 D_800599EC;
extern s32 D_80059B10[][6];
extern s32 D_80059BA4;
extern s32 D_800DE028;
extern s32 D_800DE5D8;
extern s32 D_800DFE08;
extern s32 D_800DFE0C;
extern s32 D_800E36A8;
s32 func_80005EA4();
s32 func_80007F38();
s32 func_800328C8();
s32 func_80034C20();
s32 func_80034CF0();
s32 func_800494AC();

s32 func_800347B4(s32 arg0) {
    s32 sp10;
    s32 sp14;

    if (D_800599E0 == 1) {
        return 0;
    }
    if ((arg0 & 256) != 0) {
        func_80005EA4(16);
        func_80034C20();
        D_800599E8++;
        if (D_800599E8 >= 6) {
            D_800599E8 = 0;
        }
        func_80034CF0();
        return 0;
    }
    if ((arg0 & 512) != 0) {
        func_80005EA4(16);
        func_80034C20();
        D_800599E8--;
        if (D_800599E8 < 0) {
            D_800599E8 = 5;
        }
        func_80034CF0();
        return 0;
    }
    if ((arg0 & 2048) != 0) {
        func_80005EA4(16);
        func_80034C20();
        D_800599EC--;
        if (D_800599EC < 0) {
            D_800599EC = 4;
        }
        func_80034CF0();
        return 0;
    }
    if ((arg0 & 1024) != 0) {
        func_80005EA4(16);
        func_80034C20();
        D_800599EC++;
        if (D_800599EC >= 5) {
            D_800599EC = 0;
        }
        func_80034CF0();
        return 0;
    }
    if ((arg0 & 0x8000) != 0) {
        if (D_80059B10[D_800599EC][D_800599E8] != 0) {
            D_800599E0 = 1;
            D_800560F4 = 0;
            D_80058D58 = 0;
            D_80059BA4--;
            func_80005EA4(7);
            sp10 = (D_800599EC * 6) + D_800599E8;
            func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80001A44), D_800DFE08);
            func_80007F38(((s32)&D_800DE5D8));
            D_80058850 = D_800599EC;
            D_80058854 = *(s32 *)((D_800599E8 * 4) + ((s32)&D_800DE028));
            D_80059B10[D_800599EC][D_800599E8] = 0;
            func_800328C8();
            ((struct gd_48_s32 *)(*(s32 *)((((D_800599EC * 6) + D_800599E8) * 4) + ((s32)&D_800E36A8))))->v = (s32)&D_01007E30;
            sp14 = 0;
            for (;;) {
                if ((u32)sp14 >= 3) {
                    break;
                }
                (*(s32 *)((sp14 * 4) + ((s32)&D_80058D60))) = 0;
                sp14++;
            }
            if ((sp10 == D_800DFE08) || (sp10 == D_800DFE0C)) {
                return 2;
            } else {
                return 1;
            }
        } else {
            func_80005EA4(45);
        }
    }
    return 0;
}
