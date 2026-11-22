typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;

typedef struct {
    union {
        long long ll;
        double ld;
    } v;
    char *s;
    int n0;
    int nz0;
    int n1;
    int nz1;
    int n2;
    int nz2;
    int prec;
    int width;
    unsigned int nchar;
    unsigned int flags;
    char qual;
} _Pft;

typedef struct {
    long quot;
    long rem;
} ldiv_t;

extern void *func_80049508(void *, const void *, unsigned int);
extern ldiv_t func_8004A608(long, long);

#define FLAGS_MINUS 4
#define FLAGS_HASH 8
#define FLAGS_ZERO 16

#define BUFF_LEN 0x20

static s16 func_8004AC00(s16 *pex, _Pft *px);
static void func_8004A698(_Pft *px, char code, u8 *p, s16 nsig, s16 xexp);

static const double pows[] = { 10e0L, 10e1L, 10e3L, 10e7L, 10e15L, 10e31L, 10e63L, 10e127L, 10e255L };

#define _D0 0
#define _DBIAS 0x3ff
#define _DOFF 4
#define NAN 2
#define INF 1
#define FINITE -1
#define _DFRAC ((1 << _DOFF) - 1)
#define _DMASK (0x7fff & ~_DFRAC)
#define _DMAX ((1 << (15 - _DOFF)) - 1)
#define _D1 1
#define _D2 2
#define _D3 3

void func_8004AC08(_Pft *px, char code) {
    char buff[BUFF_LEN];
    char *p;
    f64 ldval;
    s16 err;
    s16 nsig;
    s16 xexp;

    p = buff;
    ldval = px->v.ld;

    if (px->prec < 0) {
        px->prec = 6;
    } else if (px->prec == 0 && (code == 'g' || code == 'G')) {
        px->prec = 1;
    }

    err = func_8004AC00(&xexp, px);
    if (err > 0) {
        func_80049508(px->s, err == 2 ? "NaN" : "Inf", px->n1 = 3);
        return;
    }

    if (err == 0) {
        nsig = 0;
        xexp = 0;
    } else {
        int i;
        int n;

        if (ldval < 0) {
            ldval = -ldval;
        }

        xexp = xexp * 30103 / 100000 - 4;
        if (xexp < 0) {
            n = (3 - xexp) & ~3;
            xexp = -n;
            for (i = 0; n > 0; n >>= 1, i++) {
                if (n & 1) {
                    ldval *= pows[i];
                }
            }
        } else if (xexp > 0) {
            f64 factor = 1;

            xexp &= ~3;

            for (n = xexp, i = 0; n > 0; n >>= 1, i++) {
                if (n & 1) {
                    factor *= pows[i];
                }
            }

            ldval /= factor;
        }
        {
            int gen = px->prec + ((code == 'f') ? 10 + xexp : 6);

            if (gen > 0x13) {
                gen = 0x13;
            }

            for (*p++ = '0'; gen > 0 && 0 < ldval; p += 8) {
                int j;
                long lo = ldval;

                if ((gen -= 8) > 0) {
                    ldval = (ldval - lo) * 1e8;
                }

                for (p += 8, j = 8; lo > 0 && --j >= 0;) {
                    ldiv_t qr = func_8004A608(lo, 10);

                    *--p = qr.rem + '0', lo = qr.quot;
                }

                while (--j >= 0) {
                    *--p = '0';
                }
            }

            gen = p - &buff[1];

            for (p = &buff[1], xexp += 7; *p == '0'; p++) {
                --gen, --xexp;
            }

            nsig = px->prec + ((code == 'f') ? xexp + 1 : ((code == 'e' || code == 'E') ? 1 : 0));

            if (gen < nsig) {
                nsig = gen;
            }

            if (nsig > 0) {
                const char drop = nsig < gen && '5' <= p[nsig] ? '9' : '0';
                int n2;

                for (n2 = nsig; p[--n2] == drop;) {
                    --nsig;
                }
                if (drop == '9') {
                    ++p[n2];
                }
                if (n2 < 0) {
                    --p, ++nsig, ++xexp;
                }
            }
        }
    }
    func_8004A698(px, code, (u8 *)p, nsig, xexp);
}

static s16 func_8004AC00(s16 *pex, _Pft *px) {
    u16 *ps = (u16 *)px;
    s16 xchar = (ps[_D0] & _DMASK) >> _DOFF;

    if (xchar == _DMAX) {
        *pex = 0;
        return (s16)(ps[_D0] & _DFRAC || ps[_D1] || ps[_D2] || ps[_D3] ? NAN : INF);
    } else if (0 < xchar) {
        ps[_D0] = (ps[_D0] & ~_DMASK) | (_DBIAS << _DOFF);
        *pex = xchar - (_DBIAS - 1);
        return FINITE;
    }
    if (0 > xchar) {
        return NAN;
    } else {
        *pex = 0;
        return 0;
    }
}

static void func_8004A698(_Pft *px, char code, u8 *p, s16 nsig, s16 xexp) {
    const unsigned char point = '.';

    if (nsig <= 0) {
        nsig = 1,

        p = (u8 *)"0";
    }

    if (code == 'f' || ((code == 'g' || code == 'G') && (-4 <= xexp) && (xexp < px->prec))) {
        ++xexp;
        if (code != 'f') {
            if (!(px->flags & FLAGS_HASH) && nsig < px->prec) {
                px->prec = nsig;
            }
            if ((px->prec -= xexp) < 0) {
                px->prec = 0;
            }
        }
        if (xexp <= 0) {
            px->s[px->n1++] = '0';
            if (0 < px->prec || px->flags & FLAGS_HASH) {
                px->s[px->n1++] = point;
            }
            if (px->prec < -xexp) {
                xexp = -px->prec;
            }
            px->nz1 = -xexp;
            px->prec += xexp;
            if (px->prec < nsig) {
                nsig = px->prec;
            }
            func_80049508(&px->s[px->n1], p, px->n2 = nsig);
            px->nz2 = px->prec - nsig;
        } else if (nsig < xexp) {
            func_80049508(&px->s[px->n1], p, nsig);
            px->n1 += nsig;
            px->nz1 = xexp - nsig;
            if (0 < px->prec || px->flags & FLAGS_HASH) {
                px->s[px->n1] = point, ++px->n2;
            }
            px->nz2 = px->prec;
        } else {
            func_80049508(&px->s[px->n1], p, xexp);
            px->n1 += xexp;
            nsig -= xexp;
            if (0 < px->prec || px->flags & FLAGS_HASH) {
                px->s[px->n1++] = point;
            }
            if (px->prec < nsig) {
                nsig = px->prec;
            }
            func_80049508(&px->s[px->n1], p + xexp, nsig);
            px->n1 += nsig;
            px->nz1 = px->prec - nsig;
        }
    } else {
        if (code == 'g' || code == 'G') {
            if (nsig < px->prec) {
                px->prec = nsig;
            }
            if (--px->prec < 0) {
                px->prec = 0;
            }
            code = code == 'g' ? 'e' : 'E';
        }
        px->s[px->n1++] = *p++;
        if (0 < px->prec || px->flags & FLAGS_HASH) {
            px->s[px->n1++] = point;
        }
        if (0 < px->prec) {
            if (px->prec < --nsig) {
                nsig = px->prec;
            }
            func_80049508(&px->s[px->n1], p, nsig);
            px->n1 += nsig;
            px->nz1 = px->prec - nsig;
        }
        p = (u8 *)&px->s[px->n1];
        *p++ = code;
        if (0 <= xexp) {
            *p++ = '+';
        } else {
            *p++ = '-';
            xexp = -xexp;
        }
        if (100 <= xexp) {
            if (1000 <= xexp) {
                *p++ = xexp / 1000 + '0', xexp %= 1000;
            }
            *p++ = xexp / 100 + '0', xexp %= 100;
        }
        *p++ = xexp / 10 + '0', xexp %= 10;
        *p++ = xexp + '0';
        px->n2 = p - (u8 *)&px->s[px->n1];
    }
    if ((px->flags & (FLAGS_ZERO | FLAGS_MINUS)) == FLAGS_ZERO) {
        int n = px->n0 + px->n1 + px->nz1 + px->n2 + px->nz2;

        if (n < px->width) {
            px->nz0 = px->width - n;
        }
    }
}
