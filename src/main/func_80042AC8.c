typedef signed int s32;
typedef unsigned char u8;

typedef struct Context {
    u8 pad_00[0x14];
    s32 index;
    u8 pad_18[4];
    s32 *values;
} Context;

s32 func_80042AC8(Context *ctx, s32 kind, s32 value) {
    s32 *values = ctx->values;

    if (kind == 2) {
        values[ctx->index] = value;
        ctx->index++;
    }
    return 0;
}
