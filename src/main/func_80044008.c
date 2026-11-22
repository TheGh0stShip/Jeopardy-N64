typedef signed int s32;
typedef unsigned char u8;

typedef struct Context {
    s32 value;
    u8 pad_04[0x10];
    s32 other;
} Context;

s32 func_80044008(Context *ctx, s32 kind, s32 value) {
    switch (kind) {
    case 1:
        ctx->value = value;
        break;
    case 6:
        ctx->other = value;
        break;
    }
    return 0;
}
