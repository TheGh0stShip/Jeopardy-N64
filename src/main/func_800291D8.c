typedef signed int s32;

extern s32 D_80058120[];
extern s32 D_80058850;
extern s32 D_80058858;
extern s32 D_80058D58;
extern s32 D_8005998C;
void func_800184E4(void);

void func_800291D8(void) {
    if (D_80058D58 != 0) {
        D_80058120[D_8005998C] = D_80058120[D_8005998C] + D_80058D58;
    } else {
        D_80058120[D_8005998C] = D_80058120[D_8005998C] + (D_80058850 + 1) * 100 * (D_80058858 + 1);
    }
    func_800184E4();
}
