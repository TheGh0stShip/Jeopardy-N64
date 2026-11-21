#include "n64dk_lift.h"

extern s32 D_800560F8;
extern s32 D_80059978;
s32 func_8001B268();
s32 func_8001B608();
s32 func_8001BD34();
s32 func_8001BF60();
s32 func_8001C18C();
s32 func_8001C860();
s32 func_8001C9DC();
s32 func_8001CF5C();
s32 func_8001D4DC();
s32 func_8001DA5C();
s32 func_8001E0D8();
s32 func_8001E4A4();
s32 func_8001E844();
s32 func_8001EDC4();
s32 func_8001F0B4();
s32 func_8001FEB4();
s32 func_8001FF08();
s32 func_80021B98();
s32 func_80021E28();
s32 func_80022204();
s32 func_8002239C();
s32 func_80022524();
s32 func_80022B60();
s32 func_800235CC();
s32 func_80023870();
s32 func_80023AE8();
s32 func_80023D5C();
s32 func_80023FD0();
s32 func_80024274();
s32 func_80024520();
s32 func_80024E88();
s32 func_800254D4();
s32 func_80025A00();

void func_800268CC(void) {
    if (D_80059978 == 1) {
        func_80023D5C();
        return;
    }
    switch (D_800560F8) {
    case 1:
        func_80024E88();
        return;
    case 2:
        func_80021B98();
        return;
    case 3:
        func_80021E28();
        return;
    case 4:
        func_80025A00();
        return;
    case 5:
        func_80022B60();
        return;
    case 6:
        func_8001B268();
        return;
    case 7:
        func_8001DA5C();
        return;
    case 8:
        func_8001E4A4();
        return;
    case 9:
        func_8001E844();
        return;
    case 10:
        func_8001F0B4();
        return;
    case 11:
        func_8001E0D8();
        return;
    case 12:
        func_8001C18C();
        return;
    case 13:
        func_8001B608();
        return;
    case 14:
        func_8001EDC4();
        return;
    case 15:
        func_8001C9DC();
        return;
    case 16:
        func_8001CF5C();
        return;
    case 17:
        func_8001D4DC();
        return;
    case 18:
        func_80024520();
        return;
    case 19:
        func_80022B60();
        func_80023870();
        return;
    case 20:
        func_80022524();
        return;
    case 21:
        func_80023FD0();
        return;
    case 22:
        func_80022204();
        return;
    case 23:
        func_8002239C();
        return;
    case 24:
        func_8001C860();
        return;
    case 25:
        func_80023AE8();
        return;
    case 26:
        func_80024274();
        return;
    case 27:
        func_800254D4();
        return;
    case 28:
        func_8001FF08();
        return;
    case 29:
        func_800235CC();
        return;
    case 30:
        func_8001FEB4();
        return;
    case 31:
        func_8001BD34();
        return;
    case 32:
        func_8001FEB4();
        return;
    case 33:
        func_8001BF60();
        return;
    }
}
