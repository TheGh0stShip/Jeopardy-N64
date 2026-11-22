/* libaudio drvrnew.c default effect parameters (ms = 40 samples) */
#define ms *(((int)((float)44.1))&~0x7)
int D_80072008[26] = {
    /* sections	   length */
          3,        100 ms,
                                      /*       chorus  chorus   filter
       input  output  fbcoef  ffcoef   gain     rate   depth     coef  */
           0,   54 ms,  9830,  -9830,      0,      0,      0,      0,
       19 ms,   38 ms,  3276,  -3276, 0x3fff,      0,      0,      0,
           0,   60 ms,  5000,      0,      0,      0,      0, 0x5000
};
int D_80072070[34] = {
    /* sections	   length */
          4,        100 ms,
                                      /*       chorus  chorus   filter
       input  output  fbcoef  ffcoef   gain     rate   depth     coef  */
           0,   66 ms,  9830,  -9830,      0,      0,      0,      0,
       22 ms,   54 ms,  3276,  -3276, 0x3fff,      0,      0,      0,
       66 ms,   91 ms,  3276,  -3276, 0x3fff,      0,      0,      0,
           0,   94 ms,  8000,      0,      0,      0,      0, 0x5000
};
int D_800720F8[10] = {
    /* sections	   length */
          1,       200 ms,
                                      /*       chorus  chorus   filter
       input  output  fbcoef  ffcoef   gain     rate   depth     coef   */
           0,  179 ms, 12000,      0, 0x7fff,      0,      0,      0
};
int D_80072120[10] = {
    /* sections	   length */
          1,        20 ms,
                                      /*       chorus  chorus   filter
       input  output  fbcoef  ffcoef   gain     rate   depth     coef   */
	  0,   5 ms, 0x4000,      0,  0x7fff,   7600,   700,      0
};
int D_80072148[10] = {
    /* sections	   length */
          1,        20 ms,
                                      /*       chorus  chorus   filter
       input  output  fbcoef  ffcoef   gain     rate   depth     coef   */
	   0,   5 ms,      0, 0x5fff, 0x7fff,    380,   500,      0
};
int D_80072170[10] = {
    0, 0,
    0, 0, 0, 0, 0, 0, 0, 0
};
