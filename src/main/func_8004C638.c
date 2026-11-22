typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;
typedef unsigned int uintptr_t;
typedef unsigned char u8;

typedef struct Context {
    u8 pad_00[0x3C];
    s32 selected;
    u32 entries;
} Context;

void func_8004C638(Context *ctx, s16 index) {
    u32 base;
    s32 offset;

    base = ctx->entries;
    offset = index * 0x30;
    if (*(s32 *)(uintptr_t)(base + offset + 0x28) == 0) {
        *(s32 *)(uintptr_t)(base + offset + 0x1C) = 0;
        if (index == ctx->selected) {
            ctx->selected = -1;
        }
    }
}
