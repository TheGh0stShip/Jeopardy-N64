typedef unsigned int u32; typedef signed int s32; typedef unsigned long long u64;
extern u64 D_80072338;
extern u32 D_800D76E0[];
extern u32 D_800DDFA8[];
extern u32 D_800DE5A8[];
extern u32 D_800DE650[];
extern u64 osGetTime(void);

void func_800192F8(u32 arg0, s32 arg1, u32 arg2) {
    D_800D76E0[arg1] = 1;
    D_800DE650[arg1] = D_80072338 / arg2;
    D_800DE5A8[arg1] = arg0 + osGetTime() / D_800DE650[arg1];
    D_800DDFA8[arg1] = arg0;
}
