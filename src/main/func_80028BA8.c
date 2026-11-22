typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;
extern u8 *D_80058D80;
extern u32 D_800DE598;
extern u8 D_800E90D0[][31];
s32 func_80007F38();

s32 func_80028BA8(void) {
    u32 i;
    s32 j;
    s32 diff;

    for (i = 0; i < D_800DE598; i++) {
        j = 0;
        func_80007F38(D_800E90D0[i]);
        func_80007F38(D_80058D80);
        diff = 0;
        while (D_800E90D0[i][j] != 0) {
            if (D_800E90D0[i][j] != D_80058D80[j++]) {
                diff = 1;
            }
        }
        if (diff == 1) {
            j--;
        }
        if (D_800E90D0[i][j] == 0) {
            return 1;
        }
    }
    return 0;
}
