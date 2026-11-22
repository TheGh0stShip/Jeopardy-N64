typedef unsigned char u8;
typedef unsigned int u32;
typedef unsigned long long u64;

/* umul_ppmm.h (inlined) */
#ifndef UMUL_PPMM_H
#define UMUL_PPMM_H
/* GCC 2.x longlong.h, MIPS */
#define umul_ppmm(w1, w0, u, v) \
  __asm__ ("multu %2,%3\n\tmflo %0\n\tmfhi %1" \
           : "=d" ((u32)(w0)), "=d" ((u32)(w1)) \
           : "d" ((u32)(u)), "d" ((u32)(v)))
#endif

/* end umul_ppmm.h */

extern const u8 D_80001C08[];

typedef union {
    struct { u32 high, low; } s;
    u64 ll;
} DIunion;

#define __ll_B 0x10000
#define __ll_lowpart(t) ((u32)(t) % __ll_B)
#define __ll_highpart(t) ((u32)(t) / __ll_B)

#define sub_ddmmss(sh, sl, ah, al, bh, bl) \
  do { \
    u32 __x; \
    __x = (al) - (bl); \
    (sh) = (ah) - (bh) - (__x > (al)); \
    (sl) = __x; \
  } while (0)

#define udiv_qrnnd(q, r, n1, n0, d) \
  do { \
    u32 __d1, __d0, __q1, __q0; \
    u32 __r1, __r0, __m; \
    __d1 = __ll_highpart(d); \
    __d0 = __ll_lowpart(d); \
    __r1 = (n1) % __d1; \
    __q1 = (n1) / __d1; \
    __m = (u32)__q1 * __d0; \
    __r1 = __r1 * __ll_B | __ll_highpart(n0); \
    if (__r1 < __m) { \
        __q1--, __r1 += (d); \
        if (__r1 >= (d)) \
            if (__r1 < __m) \
                __q1--, __r1 += (d); \
    } \
    __r1 -= __m; \
    __r0 = __r1 % __d1; \
    __q0 = __r1 / __d1; \
    __m = (u32)__q0 * __d0; \
    __r0 = __r0 * __ll_B | __ll_lowpart(n0); \
    if (__r0 < __m) { \
        __q0--, __r0 += (d); \
        if (__r0 >= (d)) \
            if (__r0 < __m) \
                __q0--, __r0 += (d); \
    } \
    __r0 -= __m; \
    (q) = (u32)__q1 * __ll_B | __q0; \
    (r) = __r0; \
  } while (0)

#define count_leading_zeros(count, x) \
  do { \
    u32 __xr = (x); \
    u32 __a; \
    __a = __xr < ((u32)1 << 16) \
        ? (__xr < ((u32)1 << 8) ? 0 : 8) \
        : (__xr < ((u32)1 << 24) ? 16 : 24); \
    (count) = 32 - (D_80001C08[__xr >> __a] + __a); \
  } while (0)

u64 func_8003B668(u64 n, u64 d, u64 *rp) {
    DIunion ww;
    DIunion nn, dd;
    DIunion rr;
    u32 d0, d1, n0, n1, n2;
    u32 q0, q1;
    u32 b, bm;

    nn.ll = n;
    dd.ll = d;

    d0 = dd.s.low;
    d1 = dd.s.high;
    n0 = nn.s.low;
    n1 = nn.s.high;

    if (d1 == 0) {
        if (d0 > n1) {
            count_leading_zeros(bm, d0);
            if (bm != 0) {
                d0 = d0 << bm;
                n1 = (n1 << bm) | (n0 >> (32 - bm));
                n0 = n0 << bm;
            }
            udiv_qrnnd(q0, n0, n1, n0, d0);
            q1 = 0;
        } else {
            if (d0 == 0)
                d0 = 1 / d0;
            count_leading_zeros(bm, d0);
            if (bm == 0) {
                n1 -= d0;
                q1 = 1;
            } else {
                b = 32 - bm;
                d0 = d0 << bm;
                n2 = n1 >> b;
                n1 = (n1 << bm) | (n0 >> b);
                n0 = n0 << bm;
                udiv_qrnnd(q1, n1, n2, n1, d0);
            }
            udiv_qrnnd(q0, n0, n1, n0, d0);
        }
        if (rp != 0) {
            rr.s.low = n0 >> bm;
            rr.s.high = 0;
            *rp = rr.ll;
        }
    } else {
        if (d1 > n1) {
            q0 = 0;
            q1 = 0;
            if (rp != 0) {
                rr.s.low = n0;
                rr.s.high = n1;
                *rp = rr.ll;
            }
        } else {
            count_leading_zeros(bm, d1);
            if (bm == 0) {
                if (n1 > d1 || n0 >= d0) {
                    q0 = 1;
                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
                } else
                    q0 = 0;
                q1 = 0;
                if (rp != 0) {
                    rr.s.low = n0;
                    rr.s.high = n1;
                    *rp = rr.ll;
                }
            } else {
                u32 m1, m0;
                b = 32 - bm;
                d1 = (d1 << bm) | (d0 >> b);
                d0 = d0 << bm;
                n2 = n1 >> b;
                n1 = (n1 << bm) | (n0 >> b);
                n0 = n0 << bm;
                udiv_qrnnd(q0, n1, n2, n1, d1);
                umul_ppmm(m1, m0, q0, d0);
                if (m1 > n1 || (m1 == n1 && m0 > n0)) {
                    q0--;
                    sub_ddmmss(m1, m0, m1, m0, d1, d0);
                }
                q1 = 0;
                if (rp != 0) {
                    sub_ddmmss(n1, n0, n1, n0, m1, m0);
                    rr.s.low = (n1 << b) | (n0 >> bm);
                    rr.s.high = n1 >> bm;
                    *rp = rr.ll;
                }
            }
        }
    }
    ww.s.low = q0;
    ww.s.high = q1;
    return ww.ll;
}
