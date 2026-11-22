typedef signed short s16; typedef signed int s32; typedef unsigned int u32; typedef float f32;

typedef struct Vec3f {
    f32 x, y, z;
    f32 unkC[3];
} Vec3f;

typedef struct Obj {
    char unk0[0x10];
    s16 x, y, z;
    char unk16[0x12];
    s32 unk28;
    s32 unk2C;
    f32 unk30;
} Obj;

extern s32 D_800D768C;
void func_800359E8(s32);

void func_80016548(Obj *obj, Vec3f *path, u32 arg2, s32 arg3) {
    if (obj != 0) {
        if (D_800D768C < 300) {
            obj->x = path[D_800D768C].x;
            obj->y = path[D_800D768C].y;
            obj->z = path[D_800D768C].z;
        } else {
            func_800359E8(43);
        }
        obj->unk28 = 0;
        obj->unk2C = 0;
        obj->unk30 = arg2;
    }
}
