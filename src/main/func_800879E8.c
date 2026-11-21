#include "n64dk_lift.h"

struct n64dk_a8015EB50 { s32 m0; s32 m4; };
extern struct n64dk_a8015EB50 D_8015EB50[];
extern s32 D_8015EB90;
extern s32 D_8015EB94;
extern s32 D_8015EBC8;
extern s32 D_8015EBCC;

void func_800879E8(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    for (sp0 = 0;;) {
        if (sp0 >= 8) {
            break;
        }
        D_8015EB50[sp0].m0 = -1;
        D_8015EB50[sp0].m4 = 0;
        sp0++;
    }
    D_8015EB90 = 35;
    D_8015EB94 = 11;
    sp0 = 9;
    for (;;) {
        if (sp0 >= 15) {
            break;
        }
        D_8015EB50[sp0].m0 = -1;
        D_8015EB50[sp0].m4 = 0;
        sp0++;
    }
    D_8015EBC8 = 34;
    D_8015EBCC = 11;
    sp0 = 16;
    for (;;) {
        if (sp0 >= 24) {
            break;
        }
        D_8015EB50[sp0].m0 = -1;
        D_8015EB50[sp0].m4 = 0;
        sp0++;
    }
    sp8 = 33;
    sp0 = 24;
    for (;;) {
        if (sp0 >= 36) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 > 0) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 11;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 1;
    }
    for (sp0 = 36;;) {
        if (sp0 >= 48) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 2) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 10;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 2;
    }
    for (sp0 = 48;;) {
        if (sp0 >= 96) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 8) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 8;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 8;
    }
    for (sp0 = 96;;) {
        if (sp0 >= 128) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 16) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 7;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 16;
    }
    for (sp0 = 128;;) {
        if (sp0 >= 256) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 64) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 5;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 64;
    }
    for (sp0 = 256;;) {
        if (sp0 >= 512) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 128) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 4;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 128;
    }
    for (sp0 = 512;;) {
        if (sp0 >= 1024) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 256) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 3;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 256;
    }
    for (sp0 = 1024;;) {
        if (sp0 >= 2048) {
            return;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 1024) {
                break;
            }
            D_8015EB50[sp0 + sp4].m0 = sp8;
            D_8015EB50[sp0 + sp4].m4 = 1;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 1024;
    }
}
