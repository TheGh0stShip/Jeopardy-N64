typedef struct {
    long long quot;
    long long rem;
} lldiv_t;

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

extern char D_800723C8[];
extern char D_800723DC[];

lldiv_t func_8004A508(long long num, long long denom);
void *func_80049508(void *dst, const void *src, unsigned int n);

void func_8004A268(_Pft *args, char type) {
    char buff[0x18];
    const char *digs;
    int base;
    int i;
    unsigned long long ullval;

    if (type == 'X') {
        digs = D_800723DC;
    } else {
        digs = D_800723C8;
    }

    base = (type == 'o') ? 8 : ((type != 'x' && type != 'X') ? 10 : 16);
    i = 0x18;
    ullval = args->v.ll;

    if ((type == 'd' || type == 'i') && args->v.ll < 0) {
        ullval = -ullval;
    }

    if (ullval != 0 || args->prec != 0) {
        buff[--i] = digs[ullval % base];
    }

    args->v.ll = ullval / base;

    while (args->v.ll > 0 && i > 0) {
        lldiv_t qr = func_8004A508(args->v.ll, base);

        args->v.ll = qr.quot;
        buff[--i] = digs[qr.rem];
    }

    args->n1 = 0x18 - i;

    func_80049508(args->s, buff + i, args->n1);

    if (args->n1 < args->prec) {
        args->nz0 = args->prec - args->n1;
    }

    if (args->prec < 0 && (args->flags & (0x10 | 0x4)) == 0x10) {
        i = args->width - args->n0 - args->nz0 - args->n1;
        if (i > 0) {
            args->nz0 += i;
        }
    }
}
