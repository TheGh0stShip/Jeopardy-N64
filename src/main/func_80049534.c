typedef unsigned char u8; typedef signed int s32;
s32 func_80049534(u8 *str) {
    u8 *p = str;
    while (*p) p++;
    return p - str;
}
