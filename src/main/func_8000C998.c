typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;

struct matrix_block_140 { u8 pad[0x140]; struct { u8 bytes[0x40]; } matrices[1]; };
struct matrix_block_4c40 { u8 pad[0x4C40]; struct { u8 bytes[0x40]; } matrices[1]; };
struct command { s32 word0; s32 word1; };
struct object {
    s32 index;
    u8 pad04[0xC];
    s16 x;
    s16 y;
    s16 z;
    u8 pad16[2];
    s32 scale;
    u8 pad1C[0x2C];
    s32 display_list;
};

extern s32 D_80050718;
extern s32 D_80050720;
extern s32 D_80050730;
extern s32 D_80050740;
extern s32 D_0109FC00;
extern struct command *D_800E0F4C;
void func_8003F00C();
void func_8003F260(s32, f32, f32, f32);

void func_8000C998(struct object *object, s32 base) {
    struct command *command;

    command = D_800E0F4C++;
    command->word0 = 0xBC000002;
    command->word1 = 0x80000080;
    command = D_800E0F4C++;
    command->word0 = 0x03860010;
    command->word1 = (s32)&D_80050720;
    command = D_800E0F4C++;
    command->word0 = 0x03880010;
    command->word1 = (s32)&D_80050730;
    command = D_800E0F4C++;
    command->word0 = 0x038A0010;
    command->word1 = (s32)&D_80050740;
    command = D_800E0F4C++;
    command->word0 = 0x038C0010;
    command->word1 = (s32)&D_80050718;
    func_8003F260((s32)&((struct matrix_block_4c40 *)base)->matrices[object->index],
                   (f32)object->x, (f32)object->y, (f32)object->z);
    func_8003F00C((s32)&((struct matrix_block_140 *)base)->matrices[object->index],
                  object->scale, object->scale, object->scale);
    command = D_800E0F4C++;
    command->word0 = 0x01020040;
    command->word1 = (s32)&((struct matrix_block_4c40 *)base)->matrices[object->index];
    command = D_800E0F4C++;
    command->word0 = 0x01000040;
    command->word1 = (s32)&((struct matrix_block_140 *)base)->matrices[object->index];
    command = D_800E0F4C++;
    command->word0 = 0x06000000;
    command->word1 = (s32)&D_0109FC00;
    command = D_800E0F4C++;
    command->word0 = 0x06000000;
    command->word1 = object->display_list;
}
