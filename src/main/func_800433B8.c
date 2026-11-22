typedef float f32;
typedef signed int s32;
typedef struct {
    unsigned int input;
    unsigned int output;
    short ffcoef;
    short fbcoef;
    short gain;
    f32 rsinc;
    f32 rsval;
    s32 rsdelta;
    f32 rsgain;
} ALDelay;

f32 func_800433B8(ALDelay *d, int count)
{
    f32 val;

    d->rsval += d->rsinc * count;
    d->rsval = (d->rsval > 2.0) ? d->rsval - 4.0 : d->rsval;
    val = d->rsval;
    val = (val < 0) ? -val : val;
    val = val - 1.0;
    return d->rsgain * val;
}
