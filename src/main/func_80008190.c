#include "n64dk_lift.h"

extern s32 D_800D4450;
extern s32 D_80156ED8;
s32 func_80008C88();
s32 func_800412B8();

void func_80008190(s32 arg0) {
    s32 sp10;

    sp10 = 0;
    for (;;) {
        goto L3;
        return;
L3: ;
        func_800412B8(((s32)&D_800D4450), ((s32)&sp10), 1);
        switch (*(s16 *)sp10) {
        case 5:
            if (D_80156ED8 != 0) {
                func_80008C88();
                D_80156ED8 = 0;
            }
            break;
        }
    }
}
