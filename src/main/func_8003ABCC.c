typedef unsigned int u32;
typedef int s32;
extern s32 func_80039E20();
extern s32 func_80039E58();
extern s32 func_8003A228();
extern s32 func_8003A89C();

s32 func_8003ABCC(s32 arg0, u32 buf, u32 size) {
    s32 h;
    s32 total;
    u32 len;
    s32 r;

    h = func_80039E20();
    total = 0;
    while (size != 0) {
        len = size;
        if (len > 0x8000) {
            len = 0x8000;
        }
        func_8003A228(0xB1FF0000, buf, len);
        r = func_8003A89C(0x606, arg0, len, 0);
        if (r < 0) {
            return r;
        }
        if (r == 0) {
            return total;
        }
        buf += r;
        size -= r;
        total += r;
    }
    func_80039E58(h);
    return total;
}
