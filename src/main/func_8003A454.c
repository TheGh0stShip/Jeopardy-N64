typedef unsigned char u8; typedef unsigned int u32; typedef signed int s32;

typedef struct {
    u32 end;
    u32 flags;
} Region;

u32 func_80039EC0(u32 addr);
void func_80039F84(u32 dst, u32 src, u32 size);
void func_8003A09C(u32 dst, u32 src, u32 size);
void func_8003A228(u32 dst, u32 src, u32 size);
void func_8003A314(u32 dst, u32 val, u32 size);
void func_8003A3E0(u32 dst, u32 src, u32 size);
extern Region D_80071F60[];
extern u8 D_8F0D0220[];

void func_8003A454(s32 arg0) {
    u32 dst;
    u32 addr;
    u32 size;
    u32 n;
    s32 i;
    u32 flags;

    dst = 0xB1FE0000;
    addr = func_80039EC0(0xB1FFFFF4);
    size = func_80039EC0(0xB1FFFFF8);
    if (addr >= 0xF0000000) {
        addr += (u32)D_8F0D0220;
    }
    while (size != 0) {
        i = 0;
        while (D_80071F60[i].end < addr) {
            i++;
        }
        n = (D_80071F60[i].end + 1) - addr;
        if (n > size) {
            n = size;
        }
        flags = D_80071F60[i].flags;
        if (!(flags & arg0)) {
            if (arg0 == 1) {
                func_8003A314(dst, 0, n);
            }
        } else if (flags & 4) {
            if (arg0 == 1) {
                func_8003A3E0(dst, addr, n);
            } else {
                func_8003A3E0(addr, dst, n);
            }
        } else if (arg0 == 1) {
            func_8003A228(dst, addr, n);
        } else if (flags & 8) {
            func_8003A09C(dst, addr, n);
        } else {
            func_80039F84(dst, addr, n);
        }
        dst += n;
        size -= n;
        addr += n;
    }
}
