#include "n64dk_lift.h"


s32 func_80024980(s32 arg0) {
    return ((((*(u8 *)arg0) - 48) * 100) + (((*(u8 *)(arg0 + 1)) - 48) * 10)) + ((*(u8 *)(arg0 + 2)) - 48);
}
