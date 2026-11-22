typedef unsigned char u8; typedef signed int s32;
s32 func_8003A93C(u8 *arg0) {
    u8 *p = arg0;
    while (*p++);
    return p - arg0;
}
