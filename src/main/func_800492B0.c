typedef unsigned char u8;
typedef unsigned int u32;

typedef struct {
    u32 ramarray[15];
    u32 pifstatus;
} OSPifRam;

typedef struct {
    u8 dummy;
    u8 txsize;
    u8 rxsize;
    u8 cmd;
    u8 typeh;
    u8 typel;
    u8 status;
    u8 dummy1;
} __OSContRequesFormat;

extern OSPifRam D_800D3160;
extern u8 D_800D31A1;

void func_800492B0(u8 cmd) {
    u8 *ptr;
    __OSContRequesFormat requestformat;
    int i;

    for (i = 0; i < 16; i++) {
        D_800D3160.ramarray[i] = 0;
    }
    D_800D3160.pifstatus = 1;
    ptr = (u8 *)&D_800D3160.ramarray;
    requestformat.dummy = 0xFF;
    requestformat.txsize = 1;
    requestformat.rxsize = 3;
    requestformat.cmd = cmd;
    requestformat.typeh = 0xFF;
    requestformat.typel = 0xFF;
    requestformat.status = 0xFF;
    requestformat.dummy1 = 0xFF;

    for (i = 0; i < D_800D31A1; i++) {
        *(__OSContRequesFormat *)ptr = requestformat;
        ptr += sizeof(__OSContRequesFormat);
    }
    *ptr = 0xFE;
}
