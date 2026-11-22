typedef struct lldiv_t {
    long long quot;
    long long rem;
} lldiv_t;

lldiv_t func_8004A508(long long num, long long denom)
{
    lldiv_t ret;

    ret.quot = num / denom;
    ret.rem = num - denom * ret.quot;
    if (ret.quot < 0 && ret.rem > 0) {
        ret.quot++;
        ret.rem -= denom;
    }
    return ret;
}
