typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32; typedef signed long long s64; typedef unsigned long long u64;
typedef float f32; typedef double f64;
#ifndef NULL
#define NULL ((void *)0)
#endif

typedef char *va_list;
#define _FP 1
#define _VA_FP_SAVE_AREA 0x10
#define _VA_ALIGN(p, a) (((unsigned int)(((char *)p) + ((a) > 4 ? (a) : 4) - 1)) & -((a) > 4 ? (a) : 4))
#define __va_stack_arg(list, mode) \
    (((list) = (char *)_VA_ALIGN(list, __builtin_alignof(mode)) + _VA_ALIGN(sizeof(mode), 4)), \
     (((char *)list) - (_VA_ALIGN(sizeof(mode), 4) - sizeof(mode))))
#define __va_double_arg(list, mode) \
    ((((long)list & 0x1) \
          ? (list = (char *)((long)list + 7), (char *)((long)list - 6 - _VA_FP_SAVE_AREA)) \
          : (((long)list & 0x2) \
                 ? (list = (char *)((long)list + 10), (char *)((long)list - 24 - _VA_FP_SAVE_AREA)) \
                 : __va_stack_arg(list, mode))))
#define va_arg(list, mode) \
    ((mode *)(((__builtin_classof(mode) == _FP && __builtin_alignof(mode) == sizeof(double)) \
                   ? __va_double_arg(list, mode) \
                   : __va_stack_arg(list, mode))))[-1]

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

typedef char *(*outfun)(char *, const char *, unsigned int);

#define FLAGS_SPACE 1
#define FLAGS_PLUS 2
#define FLAGS_MINUS 4
#define FLAGS_HASH 8
#define FLAGS_ZERO 16

#define isdigit(x) ((x >= '0' && x <= '9'))
#define LDSIGN(x) (((unsigned short *)&(x))[0] & 0x8000)

#define ATOI(i, a) \
    for (i = 0; isdigit(*a); a++) \
        if (i < 999) \
            i = *a + i * 10 - '0';
#define _PROUT(fmt, _size) \
    if (_size > 0) { \
        arg = prout(arg, fmt, _size); \
        if (arg != NULL) \
            x.nchar += _size; \
        else \
            return x.nchar; \
    }
#define _PAD(m, src, extracond) \
    if (extracond && m > 0) { \
        int i; \
        int j; \
        for (j = m; j > 0; j -= i) { \
            if ((unsigned)j > 32) \
                i = 32; \
            else \
                i = j; \
            _PROUT(src, i); \
        } \
    }

extern char D_80072378[];
extern char D_8007239C[];
extern const char D_80002418[];
extern const char D_8000241C[];
extern const int D_80002424[];

extern void func_8004A268(_Pft *, char);
extern void func_8004AC08(_Pft *, char);
extern unsigned int func_80049534(const char *);
extern const char *func_8004955C(const char *, int);

static void func_800495A8(_Pft *, va_list *, char, char *);

int func_80049C18(outfun prout, char *arg, const char *fmt, va_list args) {
    _Pft x;
    x.nchar = 0;
    while (1) {
        const char *s;
        char c;
        const char *t;
        char ac[32];
        s = fmt;
        for (c = *s; c != 0 && c != '%';) {
            c = *++s;
        }
        _PROUT(fmt, s - fmt);
        if (c == 0) {
            return x.nchar;
        }
        fmt = ++s;
        for (x.flags = 0; (t = func_8004955C(D_8000241C, *s)) != NULL; s++) {
            x.flags |= D_80002424[t - D_8000241C];
        }
        if (*s == '*') {
            x.width = va_arg(args, int);
            if (x.width < 0) {
                x.width = -x.width;
                x.flags |= FLAGS_MINUS;
            }
            s++;
        } else {
            ATOI(x.width, s);
        }
        if (*s != '.') {
            x.prec = -1;
        } else {
            s++;
            if (*s == '*') {
                x.prec = va_arg(args, int);
                s++;
            } else {
                ATOI(x.prec, s);
            }
        }
        if (func_8004955C(D_80002418, *s) != NULL) {
            x.qual = *s++;
        } else {
            x.qual = '\0';
        }
        if (x.qual == 'l' && *s == 'l') {
            x.qual = 'L';
            s++;
        }
        func_800495A8(&x, &args, *s, ac);
        x.width -= x.n0 + x.nz0 + x.n1 + x.nz1 + x.n2 + x.nz2;
        _PAD(x.width, D_80072378, !(x.flags & FLAGS_MINUS));
        _PROUT(ac, x.n0);
        _PAD(x.nz0, D_8007239C, 1);
        _PROUT(x.s, x.n1);
        _PAD(x.nz1, D_8007239C, 1);
        _PROUT(x.s + x.n1, x.n2);
        _PAD(x.nz2, D_8007239C, 1);
        _PAD(x.width, D_80072378, x.flags & FLAGS_MINUS);
        fmt = s + 1;
    }
}

static void func_800495A8(_Pft *x, va_list *args, char type, char *buff) {
    x->n0 = x->nz0 = x->n1 = x->nz1 = x->n2 = x->nz2 = 0;
    switch (type) {
        case 'c':
            buff[x->n0++] = va_arg(*args, int);
            break;
        case 'd':
        case 'i':
            if (x->qual == 'l') {
                x->v.ll = va_arg(*args, int);
            } else if (x->qual == 'L') {
                x->v.ll = va_arg(*args, long long);
            } else {
                x->v.ll = va_arg(*args, int);
            }
            if (x->qual == 'h') {
                x->v.ll = (short)x->v.ll;
            }
            if (x->v.ll < 0) {
                buff[x->n0++] = '-';
            } else if (x->flags & FLAGS_PLUS) {
                buff[x->n0++] = '+';
            } else if (x->flags & FLAGS_SPACE) {
                buff[x->n0++] = ' ';
            }
            x->s = &buff[x->n0];
            func_8004A268(x, type);
            break;
        case 'x':
        case 'X':
        case 'u':
        case 'o':
            if (x->qual == 'l') {
                x->v.ll = va_arg(*args, int);
            } else if (x->qual == 'L') {
                x->v.ll = va_arg(*args, long long);
            } else {
                x->v.ll = va_arg(*args, int);
            }
            if (x->qual == 'h') {
                x->v.ll = (unsigned short)x->v.ll;
            } else if (x->qual == 0) {
                x->v.ll = (unsigned int)x->v.ll;
            }
            if (x->flags & FLAGS_HASH) {
                buff[x->n0++] = '0';
                if (type == 'x' || type == 'X') {
                    buff[x->n0++] = type;
                }
            }
            x->s = &buff[x->n0];
            func_8004A268(x, type);
            break;
        case 'e':
        case 'f':
        case 'g':
        case 'E':
        case 'G':
            if (x->qual == 'L') {
                x->v.ld = va_arg(*args, double);
            } else {
                x->v.ld = va_arg(*args, double);
            }
            if (LDSIGN(x->v.ld)) {
                buff[x->n0++] = '-';
            } else if (x->flags & FLAGS_PLUS) {
                buff[x->n0++] = '+';
            } else if (x->flags & FLAGS_SPACE) {
                buff[x->n0++] = ' ';
            }
            x->s = &buff[x->n0];
            func_8004AC08(x, type);
            break;
        case 'n':
            if (x->qual == 'h') {
                *(va_arg(*args, short *)) = x->nchar;
            } else if (x->qual == 'l') {
                *va_arg(*args, int *) = x->nchar;
            } else if (x->qual == 'L') {
                *va_arg(*args, long long *) = x->nchar;
            } else {
                *va_arg(*args, int *) = x->nchar;
            }
            break;
        case 'p':
            x->v.ll = (long)va_arg(*args, void *);
            x->s = &buff[x->n0];
            func_8004A268(x, 'x');
            break;
        case 's':
            x->s = va_arg(*args, char *);
            x->n1 = func_80049534(x->s);
            if (x->prec >= 0 && x->n1 > x->prec) {
                x->n1 = x->prec;
            }
            break;
        case '%':
            buff[x->n0++] = '%';
            break;
        default:
            buff[x->n0++] = type;
            break;
    }
}
