typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct {
    u32 ramarray[15];
    u32 pifstatus;
} OSPifRam;

typedef struct {
    u8 dummy;
    u8 txsize;
    u8 rxsize;
    u8 cmd;
    u16 button;
    s8 stick_x;
    s8 stick_y;
} __OSContReadFormat;

extern OSPifRam D_800D3160;
extern u8 D_800D31A1;

void func_80048D84(void) {
    u8 *ptr = (u8 *)&D_800D3160.ramarray;
    __OSContReadFormat readformat;
    int i;

    for (i = 0; i < 16; i++) {
        D_800D3160.ramarray[i] = 0;
    }
    D_800D3160.pifstatus = 1;
    readformat.dummy = 0xFF;
    readformat.txsize = 1;
    readformat.rxsize = 4;
    readformat.cmd = 1;
    readformat.button = 0xFFFF;
    readformat.stick_x = -1;
    readformat.stick_y = -1;
    for (i = 0; i < D_800D31A1; i++) {
        *(__OSContReadFormat *)ptr = readformat;
        ptr += sizeof(__OSContReadFormat);
    }
    *ptr = 0xFE;
}
