typedef unsigned int u32;

int func_8004C478(void) {
    register u32 stat = *(volatile u32 *)0xA410000C;

    if (stat & 0x100) {
        return 1;
    }
    return 0;
}
