typedef signed int s32; typedef unsigned int u32;
s32 func_80039E20();
s32 func_80039E58();
s32 func_80039F84();
s32 func_8003A89C();

s32 func_8003AB00(s32 arg0, s32 arg1, u32 arg2) {
    s32 total;
    s32 h;
    s32 n;
    u32 len;

    h = func_80039E20();
    total = 0;

    while (arg2 != 0) {
        len = arg2;
        if (len > 0x8000) {
            len = 0x8000;
        }
        n = func_8003A89C(0x505, arg0, len, 0);
        if (n < 0) {
            return n;
        }
        if (n == 0) {
            return total;
        }
        func_80039F84(0xB1FF0000, arg1, n);
        arg1 += n;
        arg2 -= n;
        total += n;
    }
    func_80039E58(h);
    return total;
}
