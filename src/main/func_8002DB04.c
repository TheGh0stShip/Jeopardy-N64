typedef signed int s32;
extern s32 D_80058F00;
s32 func_80028BA8();
s32 func_80028F28();
s32 func_80028D4C();

s32 func_8002DB04(void) {
    if (D_80058F00 == 1) {
        return func_80028BA8();
    }
    if (D_80058F00 == 0) {
        return func_80028F28();
    }
    if (D_80058F00 == 2) {
        return func_80028D4C();
    }
}
