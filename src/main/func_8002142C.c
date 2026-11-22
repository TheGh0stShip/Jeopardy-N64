typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef float f32; typedef double f64;

struct Frame8002142C {
    s32 w;
    s32 h;
    s32 tex[8];
};

void func_80021060(s32, s32, s32);
void func_800212E8(u32, u32, u32, u32);

void func_8002142C(u32 x, u32 y, u32 w, u32 h, struct Frame8002142C *p) {
    u32 i;
    u32 n;

    n = w / p->w - 1;
    func_80021060(p->w, p->h, p->tex[4]);
    for (i = 0; i < n; i++) {
        func_800212E8(x + p->w * 0.75 + p->w * i, y, p->w, p->h);
    }
    func_80021060(p->w, p->h, p->tex[5]);
    for (i = 0; i < n; i++) {
        func_800212E8(x + p->w * 0.75 + p->w * i, y + h - p->h, p->w, p->h);
    }
    n = h / p->h - 1;
    func_80021060(p->w, p->h, p->tex[6]);
    for (i = 0; i < n; i++) {
        func_800212E8(x, y + p->h * 0.75 + p->h * i, p->w, p->h);
    }
    func_80021060(p->w, p->h, p->tex[7]);
    for (i = 0; i < n; i++) {
        func_800212E8(x + w - p->w, y + p->h * 0.75 + p->h * i, p->w, p->h);
    }
    func_80021060(p->w, p->h, p->tex[0]);
    func_800212E8(x, y, p->w, p->h);
    func_80021060(p->w, p->h, p->tex[1]);
    func_800212E8(x + w - p->w, y, p->w, p->h);
    func_80021060(p->w, p->h, p->tex[2]);
    func_800212E8(x + w - p->w, y + h - p->h, p->w, p->h);
    func_80021060(p->w, p->h, p->tex[3]);
    func_800212E8(x, y + h - p->h, p->w, p->h);
}
