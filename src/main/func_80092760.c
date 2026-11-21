#include "n64dk_lift.h"

M2C_UNK func_80008168();                   /* extern */
extern s32 D_80074EF8;
extern M2C_UNK D_800760E4;
extern M2C_UNK D_80162F58;
extern s32 D_80162F5C;
extern s32 D_80162F60;

M2C_UNK *func_80092760(s32 arg0) {
    if (D_80074EF8 != 0) {
        func_80008168(&D_800760E4);
        return NULL;
    }
    D_80074EF8 = 1;
    D_80162F60 = arg0;
    D_80162F5C = 0;
    return &D_80162F58;
}
