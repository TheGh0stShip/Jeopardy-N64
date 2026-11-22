typedef signed char s8; typedef unsigned char u8; typedef signed int s32;

extern s32 D_80000DD4;
extern s8 D_8005602C[][7];
extern s32 D_80058120;
extern s32 D_800DE5D8;
s32 func_800494AC();

void func_80018360(s32 arg0) {
    s32 sp10;
    u8 sp14;

    func_800494AC(((s32)&D_800DE5D8), ((s32)&D_80000DD4), (*(s32 *)((arg0 * 4) + ((s32)&D_80058120))));
    sp10 = 0;
    while (!(sp10 >= 6)) {
        sp14 = *(u8 *)(sp10 + ((s32)&D_800DE5D8));
        if (sp14 == 45) {
            D_8005602C[arg0][sp10 + 1] = 12;
        }
        if (sp14 == 32) {
            D_8005602C[arg0][sp10 + 1] = 10;
        }
        if ((sp14 - 48) >= 0) {
            if ((sp14 - 48) < 10) {
                D_8005602C[arg0][sp10 + 1] = sp14 - 48;
            }
        }
        sp10++;
    }
}
