typedef signed int s32; typedef float f32;
extern f32 D_80002408;
extern f32 D_8000240C;

f32 func_80048858(s32 n) {
    f32 r = 1.0f;
    f32 x;

    if (n >= 0) {
        x = D_80002408;
    } else {
        x = D_8000240C;
        n = -n;
    }
    for (; n != 0; n >>= 1) {
        if (n & 1) {
            r *= x;
        }
        x *= x;
    }
    return r;
}
