typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

extern u32 D_8004E190;
extern u64 D_80072338;
extern u64 D_800A5980;
extern u64 D_800A5988;
extern u64 D_800A5990;

u16 func_80008F40(void) {
    u64 q;

    D_800A5980 = D_8004E190++;
    q = (D_800A5980 - D_800A5988 + D_800A5990) * 100 / D_80072338;
    D_800A5990 = D_800A5980 - D_800A5988 + D_800A5990 - q * D_80072338 / 100;
    D_800A5988 = D_800A5980;
    return q;
}
