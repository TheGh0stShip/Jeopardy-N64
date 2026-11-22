typedef unsigned char u8;
typedef signed int s32;

struct block {
    u8 pad00[0x10];
    s32 field10;
    u8 pad14[4];
    s32 field18;
    u8 pad1C[4];
    s32 field20;
    u8 pad24[4];
    s32 field28;
    s32 field2C;
    s32 field30;
    u8 pad34[4];
    s32 field38;
};

s32 func_80043338(s32);
void func_8004BD88(s32, struct block *, s32);
extern struct block D_800D31F0;

struct block *func_8004BA98(s32 arg0) {
    struct block *result;

    result = &D_800D31F0;
    func_8004BD88(arg0, result, 0x40);
    if (result->field10 != 0) result->field10 = func_80043338(result->field10);
    if (result->field18 != 0) result->field18 = func_80043338(result->field18);
    if (result->field20 != 0) result->field20 = func_80043338(result->field20);
    if (result->field28 != 0) result->field28 = func_80043338(result->field28);
    if (result->field2C != 0) result->field2C = func_80043338(result->field2C);
    if (result->field30 != 0) result->field30 = func_80043338(result->field30);
    if (result->field38 != 0) result->field38 = func_80043338(result->field38);
    return result;
}
