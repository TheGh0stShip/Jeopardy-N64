#include "n64dk_lift.h"

f64 func_80041B30(f64 arg0, s32 *arg2) {
    f64 var_f0_23;
    f64 var_f2_65;

    *arg2 = 0;
    if (arg0 == 0.0) {
        return arg0;
    }
    if (arg0 > 0.0) {
        var_f0_23 = arg0;
    } else {
        var_f0_23 = -arg0;
    }
    if (var_f0_23 >= 1.0) {
        do {
            var_f0_23 *= 0.5;
            *arg2 += 1;
        } while (var_f0_23 >= 1.0);
    }
    if (var_f0_23 < 0.5) {
        do {
            var_f0_23 *= 2.0;
            *arg2 -= 1;
        } while (var_f0_23 < 0.5);
    }
    if (arg0 > 0.0) {
        var_f2_65 = var_f0_23;
    } else {
        var_f2_65 = -var_f0_23;
    }
    return var_f2_65;
}
