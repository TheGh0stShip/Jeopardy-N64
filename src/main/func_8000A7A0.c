typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;
typedef float f32;

struct gd_4_s32 { u8 pad[0x4]; s32 v; };
struct n64dk_e8 { u8 b[8]; };
extern f32 D_8000060C;
extern f32 D_80000610;
extern f32 D_80000614;
extern f32 D_80000618;
extern f32 D_8000061C;
extern f32 D_80000620;
extern f32 D_80000624;
extern f32 D_80000628;
extern f32 D_8000062C;
extern struct n64dk_e8 *D_800E0F4C;
void func_80009CFC();

#define _SHIFTL(v, s, w) ((unsigned int)(((unsigned int)(v) & ((0x01 << (w)) - 1)) << (s)))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))

void func_8000A7A0(s32 arg0, u16 arg1, u16 arg2, u16 mode, u16 arg4, u16 arg5, u16 arg6, u16 w, u16 h,
                   s16 x0, s16 y0, s16 x1, s16 y1, f32 fx, f32 fy) {
    s32 y;
    s32 x;
    s32 s;
    s32 t;
    s32 xh;
    s32 yh;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;
    s32 pad68;
    s32 pad6C;
    f32 fs;
    f32 ft;
    s32 g1;
    s32 g2;

    switch (mode) {
    case 0:
        if (fx < 0.0f) {
            x0 = x0 - fx;
            fx = 0.0f;
        }
        if (fy < 0.0f) {
            y0 = y0 - fy;
            fy = 0.0f;
        }
        if (x1 - x0 > 320) {
            x1 = x0 + 320;
        }
        if (y1 - y0 > 240) {
            y1 = y0 + 240;
        }
        if (fx >= D_8000060C || fy >= D_80000610 || !(x0 < x1) || !(y0 < y1)) {
            break;
        }
        for (y = y0, t = fy; y < y1; y += h, t += h) {
            for (x = x0, s = fx; x < x1; x += w, s += w) {
                ulx = x;
                uly = y;
                lrx = MIN(x + w, x1 - 1);
                lry = MIN(y + h, y1 - 1);
                func_80009CFC(arg0, arg1, arg2, ulx, uly, lrx, lry, arg5, arg6);
                fs = x;
                ft = y;
                xh = MIN(s + w, (x1 - x) + s);
                yh = MIN(t + h, (y1 - y) + t);
                g1 = (s32)D_800E0F4C++;
                (*(s32 *)g1) = _SHIFTL(0xE4, 24, 8) | _SHIFTL(xh << 2, 12, 12) | _SHIFTL(yh << 2, 0, 12);
                ((struct gd_4_s32 *)g1)->v = (((s << 2) & 4095) << 12) | ((t << 2) & 4095);
                g2 = (s32)D_800E0F4C++;
                (*(s32 *)g2) = 0xB4000000;
                ((struct gd_4_s32 *)g2)->v = (((s32)(fs * D_80000614) & 0xFFFF) << 16) | ((s32)(ft * D_80000618) & 0xFFFF);
                g2 = (s32)D_800E0F4C++;
                (*(s32 *)g2) = 0xB3000000;
                ((struct gd_4_s32 *)g2)->v = 0x04000400;
            }
        }
        break;
    case 1:
        if (fx < 0.0f) {
            x1 = x1 + fx;
            fx = 0.0f;
        }
        if (fy < 0.0f) {
            y0 = y0 - fy;
            fy = 0.0f;
        }
        if (x1 - x0 > 320) {
            x1 = x0 + 320;
        }
        if (y1 - y0 > 240) {
            y1 = y0 + 240;
        }
        if (fx >= D_8000061C || fy >= D_80000620 || !(x0 < x1) || !(y0 < y1)) {
            break;
        }
        for (y = y0, t = fy; y < y1; y += h, t += h) {
            for (x = x1, s = fx; x0 < x; x -= w, s += w) {
                ulx = MAX((x - 1) - w, 0);
                uly = MAX(y - 1, 0);
                lrx = MIN(x, x1 - 1);
                lry = MIN(y + h, y1 - 1);
                func_80009CFC(arg0, arg1, arg2, ulx, uly, lrx, lry, arg5, arg6);
                fs = x - D_80000624;
                ft = y;
                xh = MIN(s + w, (x - x0) + s);
                yh = MIN(t + h, (y1 - y) + t);
                g2 = (s32)D_800E0F4C++;
                (*(s32 *)g2) = _SHIFTL(0xE4, 24, 8) | _SHIFTL(xh << 2, 12, 12) | _SHIFTL(yh << 2, 0, 12);
                ((struct gd_4_s32 *)g2)->v = (((s << 2) & 4095) << 12) | ((t << 2) & 4095);
                g1 = (s32)D_800E0F4C++;
                (*(s32 *)g1) = 0xB4000000;
                ((struct gd_4_s32 *)g1)->v = (((s32)(fs * D_80000628) & 0xFFFF) << 16) | ((s32)(ft * D_8000062C) & 0xFFFF);
                g1 = (s32)D_800E0F4C++;
                (*(s32 *)g1) = 0xB3000000;
                ((struct gd_4_s32 *)g1)->v = 0xFC000400;
            }
        }
        break;
    }
}
