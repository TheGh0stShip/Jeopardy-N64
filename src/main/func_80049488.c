extern void *memcpy(void *, const void *, unsigned int);

void *func_80049488(void *dst, const void *src, unsigned int n) {
    return (char *)memcpy(dst, src, n) + n;
}
