extern unsigned int D_80072198;

int func_8003FDF8(void)
{
    unsigned int x;

    x = (D_80072198 << 2) + 2;
    x *= (x + 1);
    x = x >> 2;
    D_80072198 = x;
    return (x);
}
