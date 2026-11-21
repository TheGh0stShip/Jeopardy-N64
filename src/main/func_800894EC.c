#include "n64dk_lift.h"

struct n64dk_a8015A9C8 { s32 m0; s32 m4; };
extern struct n64dk_a8015A9C8 D_8015A9C8[];

void func_800894EC(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;

    sp8 = 16;
    sp0 = 0;
    for (;;) {
        if (sp0 >= 24) {
            break;
        }
        D_8015A9C8[sp0].m0 = -1;
        D_8015A9C8[sp0].m4 = 0;
        sp0++;
    }
    for (sp0 = 24;;) {
        if (sp0 >= 36) {
            break;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 > 0) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 11;
            sp4++;
        }
        for (sp4 = 1;;) {
            if (sp4 >= 2) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 11;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 2;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 10;
            sp4++;
        }
        for (sp4 = 2;;) {
            if (sp4 >= 4) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 10;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 4;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 8;
            sp4++;
        }
        for (sp4 = 8;;) {
            if (sp4 >= 16) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 8;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 16;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 7;
            sp4++;
        }
        for (sp4 = 16;;) {
            if (sp4 >= 32) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 7;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 32;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 5;
            sp4++;
        }
        for (sp4 = 64;;) {
            if (sp4 >= 128) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 5;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 128;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 4;
            sp4++;
        }
        for (sp4 = 128;;) {
            if (sp4 >= 256) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 4;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 256;
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
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 3;
            sp4++;
        }
        for (sp4 = 256;;) {
            if (sp4 >= 512) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 3;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 512;
    }
    for (sp0 = 1024;;) {
        if (sp0 >= 2048) {
            return;
        }
        sp4 = 0;
        for (;;) {
            if (sp4 >= 512) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = sp8;
            D_8015A9C8[sp0 + sp4].m4 = 1;
            sp4++;
        }
        for (sp4 = 512;;) {
            if (sp4 >= 1024) {
                break;
            }
            D_8015A9C8[sp0 + sp4].m0 = -sp8;
            D_8015A9C8[sp0 + sp4].m4 = 1;
            sp4++;
        }
        sp8--;
        sp0 = sp0 + 1024;
    }
}
