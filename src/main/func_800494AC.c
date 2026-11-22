typedef char *va_list;
#define va_start(ap, last) (ap = ((char *)&(last) + sizeof(last)))
#define va_end(ap)
extern char *func_80049488(char *, const char *, unsigned int);
extern int _Printf(char *(*)(char *, const char *, unsigned int), char *, const char *, va_list);

int func_800494AC(char *s, const char *fmt, ...)
{
    int ans;
    va_list ap;

    va_start(ap, fmt);
    ans = _Printf(func_80049488, s, fmt, ap);
    va_end(ap);
    if (ans >= 0) {
        s[ans] = 0;
    }
    return ans;
}
