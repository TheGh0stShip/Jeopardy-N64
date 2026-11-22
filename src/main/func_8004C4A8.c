typedef unsigned int u32;
typedef volatile unsigned int vu32;

int func_8004C4A8(void) {
    register u32 stat = *(vu32 *)(0xA4040010);

    if (stat & (0x4 | 0x8 | 0x10)) {
        return 1;
    }
    return 0;
}
