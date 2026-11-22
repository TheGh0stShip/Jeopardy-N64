typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

struct inner { u8 pad[4]; s32 flags; };
struct object { u16 state; u8 pad2[6]; struct inner *inner; s32 flags; };

s32 func_8003FCE8(void);
void func_8003FD08(s32);
extern struct object *D_8007246C;

void func_8004D878(s32 arg0) {
    register s32 saved;

    saved = func_8003FCE8();
    if (arg0 & 1) D_8007246C->flags |= 8;
    if (arg0 & 2) D_8007246C->flags &= ~8;
    if (arg0 & 4) D_8007246C->flags |= 4;
    if (arg0 & 8) D_8007246C->flags &= ~4;
    if (arg0 & 0x10) D_8007246C->flags |= 0x10;
    if (arg0 & 0x20) D_8007246C->flags &= ~0x10;
    if (arg0 & 0x40) {
        D_8007246C->flags |= 0x10000;
        D_8007246C->flags &= ~0x300;
    }
    if (arg0 & 0x80) {
        D_8007246C->flags &= 0xFFFEFFFF;
        D_8007246C->flags |= D_8007246C->inner->flags & 0x300;
    }
    D_8007246C->state |= 8;
    func_8003FD08(saved);
}
