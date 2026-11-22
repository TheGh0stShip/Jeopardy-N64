typedef signed int s32;
typedef float f32;
typedef unsigned char u8;

typedef struct Transform {
    f32 m00;
    f32 m01;
    f32 m02;
    u8 pad_0C[4];
    f32 m10;
    f32 m11;
    f32 m12;
    u8 pad_1C[4];
    f32 m20;
    f32 m21;
    f32 m22;
} Transform;

void func_8003EE18(Transform *, f32, f32, f32);
void func_800440C8(Transform *, s32);

void func_8003EF64(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 pad[3];
    struct {
        Transform transform;
        s32 tail[2];
    } block;

    func_8003EE18(&block.transform, arg1, arg2, arg3);
    func_800440C8(&block.transform, arg0);
}
