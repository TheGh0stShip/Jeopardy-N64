typedef unsigned char u8;
typedef signed int s32;

typedef struct {
    u8 *base;
    u8 *cur;
    s32 len;
    s32 count;
} ALHeap;

#define AL_CACHE_ALIGN 15

void *func_8003D5A8(u8 *file, s32 line, ALHeap *hp, s32 num, s32 size)
{
    s32 bytes;
    u8 *ptr = 0;

    bytes = (num * size + AL_CACHE_ALIGN) & ~AL_CACHE_ALIGN;

    if ((hp->cur + bytes) <= (hp->base + hp->len)) {
        ptr = hp->cur;
        hp->cur += bytes;
    }

    return ptr;
}
