typedef struct {
    int quot;
    int rem;
} div_t;

div_t func_8004A608(int numer, int denom) {
    div_t denom_t;
    denom_t.quot = numer / denom;
    denom_t.rem = numer - denom * denom_t.quot;
    if (denom_t.quot < 0 && denom_t.rem > 0) {
        denom_t.quot++;
        denom_t.rem -= denom;
    }
    return denom_t;
}
