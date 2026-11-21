#include "n64dk_lift.h"

M2C_UNK func_8000785C();                     /* extern */
M2C_UNK func_800927E8();                     /* extern */
extern s32 D_80074EF8;

void func_8001193C(void) {
    if (D_80074EF8 != 0) {
        func_8000785C(1);
        func_800927E8(0);
    }
    func_8000785C(1);
}
