long long __ll_mod(long long left, long long right)
{
    long long rem = left % right;

    if (((rem < 0) && (right > 0)) || ((rem > 0) && (right < 0))) {
        rem += right;
    }
    return rem;
}
