typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;
typedef void *OSMesg;
typedef struct OSMesgQueue OSMesgQueue;
extern u32 D_800D3160[];
extern u32 D_800D319C;
extern u8 D_800D31A0;
extern void __osSiGetAccess(void);
extern void func_80048D84(void);
extern s32 __osSiRawStartDma(s32, void *);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
extern void func_80048FBC(void);

s32 func_80048C18(OSMesgQueue *mq) {
    s32 ret = 0;
    s32 i;

    __osSiGetAccess();
    if (D_800D31A0 != 1) {
        func_80048D84();
        ret = __osSiRawStartDma(1, D_800D3160);
        osRecvMesg(mq, 0, 1);
    }
    for (i = 0; i < 16; i++) {
        D_800D3160[i] = 0xFF;
    }
    D_800D319C = 0;
    ret = __osSiRawStartDma(0, D_800D3160);
    D_800D31A0 = 1;
    func_80048FBC();
    return ret;
}
