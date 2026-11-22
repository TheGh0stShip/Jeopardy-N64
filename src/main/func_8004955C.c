#define NULL 0
const char *func_8004955C(const char *s, int c) {
    const char ch = c;
    while (*s != ch) {
        if (*s == '\0') {
            return NULL;
        }
        s++;
    }
    return (char *)s;
}
