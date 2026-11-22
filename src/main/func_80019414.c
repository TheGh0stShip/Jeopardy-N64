typedef signed int s32; typedef unsigned int u32; typedef unsigned long long u64;
struct ret12 { s32 w[3]; };
extern s32 D_80059978;
extern s32 D_800D76E0[];
extern s32 D_800DDFA8[];
extern s32 D_800DE5A8[];
extern u32 D_800DE650[];
s32 func_800359E8();
s32 func_80035E48();
u64 osGetTime(void);

struct ret12 func_80019414(s32 arg1) {
    s32 pad; s32 msg; s32 i; s32 pad2; struct ret12 ret; s32 pad3[2];
    ret.w[1] = 1;
    ret.w[0] = 0;
    while ((msg = func_80035E48(arg1)) != 0) {
        switch (msg) {
        case 8:
            for (i = 0; i < 11; i++) {
                D_800D76E0[i] = 0;
            }
            break;
        }
    }
    if (D_80059978 == 1) {
        for (i = 0; i < 11; i++) {
            if (D_800D76E0[i]) {
                D_800DE5A8[i] = D_800DDFA8[i] + osGetTime() / D_800DE650[i];
            }
        }
    } else
        for (i = 0; i < 11; i++) {
            if (D_800D76E0[i]) {
                if (D_800DDFA8[i]) {
                    D_800DDFA8[i] = D_800DE5A8[i] - osGetTime() / D_800DE650[i];
                } else {
                    D_800D76E0[i] = 0;
                    func_800359E8((i << 16) | 0xB);
                }
            }
        }
    return ret;
}
