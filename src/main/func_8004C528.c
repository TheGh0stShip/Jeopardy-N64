typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32;

typedef struct {
    /* 0x00 */ u16 state;
    /* 0x02 */ u16 retraceCount;
    /* 0x04 */ void *framep;
    /* 0x08 */ void *modep;
    /* 0x0C */ u32 control;
} __OSViContext;

extern __OSViContext *D_8007246C;
u32 __osDisableInt(void);
void func_8003FD08(u32);

void func_8004C528(u8 active) {
    register u32 saveMask = __osDisableInt();

    if (active) {
        D_8007246C->state |= 0x20;
    } else {
        D_8007246C->state &= ~0x20;
    }
    func_8003FD08(saveMask);
}
