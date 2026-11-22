typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;

void func_80039E88(u32, u32);
u32 func_80039EC0(u32);
void func_80039EFC(s32);
void func_8003A454(s32);
s32 func_8003AF14(void);
void func_8003AF20(s32);
extern s32 D_800D0398;
extern u8 D_800D0540;
extern u8 D_800D0542;

void func_8003A670(void) {
    s32 flag;
    u32 cmd;

    for (;;) {
        flag = 1;
        do {
            while ((cmd = func_80039EC0(0xB1FFFFF0)) == 0) {
                func_80039EFC(1000);
            }
            if (cmd == 2) {
                func_80039E88(0xB1FFFFFC, 0);
                func_80039EFC(1000);
                goto chk;
            }
            func_80039E88(0xB1FFFFFC, 0x101);
            while (func_80039EC0(0xB1FFFFF0) == cmd) {
                func_80039EFC(500);
            }
            if (func_80039EC0(0xB1FFFFF0) == 2) {
                func_80039E88(0xB1FFFFFC, 0);
                goto chk;
            }
            switch (cmd) {
                case 0x10:
                    break;
                case 0x11:
                    flag = 0;
                    break;
                case 0x12:
                    D_800D0540 = 0;
                    D_800D0542 = 0;
                    D_800D0398 &= ~1;
                    func_8003AF20(func_8003AF14() & ~1);
                    break;
                case 0x13:
                    D_800D0542 = 0;
                    D_800D0540 = 0;
                    break;
                case 0x14:
                    D_800D0542 = 0xFF;
                    break;
                case 0x15:
                    D_800D0542 = 0;
                    break;
                case 0x16:
                    func_80039E88(0xB1FE0000, (D_800D0542 << 24) | (D_800D0540 << 16));
                    break;
                case 0x17:
                    func_8003A454(2);
                    break;
                case 0x18:
                    func_8003A454(1);
                    break;
            }
            func_80039E88(0xB1FFFFFC, 0);
            while (func_80039EC0(0xB1FFFFF0) == 1) {
                func_80039EFC(500);
            }
        chk:
            if (flag != 0) {
                goto next;
            }
            flag = 1;
        } while (D_800D0542 == 0);
        break;
    next:;
    }
}
